local M = {}

local home = os.getenv("HOME")
local jdtls_home = home .. "/.local/share/nvim/mason/packages/jdtls"
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

function M.jdtls_config()
  return {
    settings ={
      java = {
        completion = {
          source = {
            organizeImports = {
              starThreshold = 10,
              staticStarThreshold = 10,
            },
          },
        },
        configuration = {
          runtimes = {
            {
              name = "JavaSE-1.8",
              path = "/usr/lib/jvm/java-1.8.0_291-oracle-amd64/",
            },
            {
              name = "JavaSE-11",
              path = "/usr/lib/jvm/java-11.0.2-openjdk-amd64/",
            },
            {
              name = "JavaSE-17",
              path = "/usr/lib/jvm/java-17.0.4.1-openjdk-amd64/",
            },
            {
              name = "JavaSE-17",
              path = "/usr/lib/jvm/java-amazon-corretto-17.0.7.7.1-linux-x64/",
            },
            {
              name = "JavaSE-19",
              path = "/usr/lib/jvm/java-19-openjdk-amd64/",
            },
            {
              name = "JavaSE-20",
              path = "/usr/lib/jvm/java-20.0.1-openjdk-amd64/",
            },
            {
                name = "JavaSE-21",
                path = "/usr/lib/jvm/java-21-openjdk-amd64/",
            },
          },
        },
      },
    },
    root_dir = require('jdtls.setup').find_root({'.git', 'pom.xml', 'build.gradle', 'mvnw', 'gradlew'}),
    cmd = {
      "/usr/lib/jvm/java-amazon-corretto-17.0.7.7.1-linux-x64/bin/java",
      '-Declipse.application=org.eclipse.jdt.ls.core.id1',
      '-Dosgi.bundles.defaultStartLevel=4',
      '-Declipse.product=org.eclipse.jdt.ls.core.product',
      '-Dlog.protocol=true',
      '-Dlog.level=ALL',
      '-Xmx1g',
      '--add-modules=ALL-SYSTEM',
      '--add-opens', 'java.base/java.util=ALL-UNNAMED',
      '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
      '-javaagent:' .. jdtls_home ..'/lombok.jar',
      '-jar', vim.fn.glob(jdtls_home .. '/plugins/org.eclipse.equinox.launcher_*.jar'),
      '-configuration', jdtls_home .. '/config_linux/',
      '-data', home .. '/.local/share/jdtls/workspaces/' .. project_name,
    }
  }
end

return M
