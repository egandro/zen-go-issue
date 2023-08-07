# Zen Go Issue

```bash
make run-test

# example.com.test
/usr/local/go/pkg/tool/linux_amd64/link: running gcc failed: exit status 1
/usr/bin/ld: cannot find -lzen_ffi

make run-build

# example.com
/usr/local/go/pkg/tool/linux_amd64/link: running gcc failed: exit status 1
/usr/bin/ld: cannot find -lzen_ffi
collect2: error: ld returned 1 exit status
```
