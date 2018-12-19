## Usage
Just print env variables via HTTP for debugging


`docker run --rm -d -e foo=bar -p 8080:8080 shoma/envcheck`

```
 % http --print=b 127.0.0.1:8080
{
    "GPG_KEY": "97FC712E4C024BBEA48A61ED3A5CA953F73C700D",
    "HOME": "/root",
    "HOSTNAME": "6ec19698a124",
    "LANG": "C.UTF-8",
    "PATH": "/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
    "PYTHON_PIP_VERSION": "9.0.1",
    "PYTHON_VERSION": "3.5.2",
    "foo": "bar"
}
```
