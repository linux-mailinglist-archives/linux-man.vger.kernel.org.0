Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28F3B3B5070
	for <lists+linux-man@lfdr.de>; Sun, 27 Jun 2021 01:09:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229794AbhFZXMA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Jun 2021 19:12:00 -0400
Received: from mout.gmx.net ([212.227.15.19]:40483 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229556AbhFZXL7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 26 Jun 2021 19:11:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1624748974;
        bh=aWIYUPVcn4z/o0v6IAHhu+tWO6vFfRmTuV9i5r2AtFI=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=g5IvqQZiIfEIk0NN76cyXwm6SnuLTHqKQkvK2VhV6KkJt33QHqg+sgXYpNfy1M3C5
         kSXzOyeZsnz5iGEzDQGPawQeqo+pheJl3tZCKLwaiSQwDdEMxKaW50hqiJqpbQK71p
         VVVzu73LgTTKVsPRiZPtgnytLp8uWuOCEN/NOd88=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [87.9.70.237] ([87.9.70.237]) by web-mail.gmx.net
 (3c-app-mailcom-bs03.server.lan [172.19.170.169]) (via HTTP); Sun, 27 Jun
 2021 01:09:34 +0200
MIME-Version: 1.0
Message-ID: <trinity-606da93f-54ae-4472-ba63-e45b3f76d6b0-1624748974126@3c-app-mailcom-bs03>
From:   Nora Platiel <nplatiel@gmx.us>
To:     Walter Harms <wharms@bfs.de>
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: AW: execve(2) man page: "absolute pathname" inconsistency
Content-Type: text/plain; charset=UTF-8
Date:   Sun, 27 Jun 2021 01:09:34 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <750acf642c3e4e79b782e72d5914c89d@bfs.de>
References: <trinity-131cbf9a-6570-4d3c-8b80-a808d1ad445a-1624567328724@3c-app-mailcom-bs07>
 <750acf642c3e4e79b782e72d5914c89d@bfs.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:JoiNXcClpPV6vecxegadCzyZq7kPo1SOZrtVBSerVQBbgWzwiNh7IzMc7mLoMm7WDchl5
 klkJKBbrmsiCTd4lHhQWl3iUTXbOa8kl9vZxB7VDk2puUFOADts+gkPLd/T9eZtJJnGZo8l1SFML
 ZLZuaTR5YmEF+4YYJtWSapYc6Pfrc3CTG7qQjo7wIpjYJ6LOO+Vax3F8ny0jcJHQmdrWbpxJna36
 eOqIcWT5g1XpDgbt7SDlwW+J5H2wtomnj+FC34hlKqXJgHenoWhwmbrjy3fMeq4P0AvsUCE45Bmj
 yA=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o5zoUxFQRj8=:bfOgYjW4FX5de4dFR6X4sE
 kUP/ShWYV1uE0oUlMu04xZzfBYacLm7TTL+4Vs4pPg1Tt0FkOE9lr9UyjeqxyQ56v7Pku53rp
 M+M8advvBG19KYnsd28dSU9hzCNuM7LM6MoIl/rWqFXja4votFEov8lZQx6RDePMv3dT0q5B0
 CWW4m4nu5VbxrB51iADk7QBQQkb5RGhTDxUvtvHHzGkUsrhYOi6NeI2+lwRM1ckLluHH1FblW
 Z+XBncYZ16a+Y2QVm/blc5Y2ZbQ9MVszfIirI+qhiMinGKyXlZ54Xpt2UbCOdh9RuwG+sSEky
 XwIluaTUJOLKKBPJwC8NP/D6GjcE2VJs6U3jk031RiZGpN8HLxSMhf52AIFQ+HPbekxtK/l4E
 JZIvgisZac3QJMO6Cn8lBaCoXsoCXAHE2s/p2PUgbnpaFw+h2orHD8dZoONCfb5TPgyj7Ywd7
 82uicTmOeXTXYI1awy2GI29a9ajTvkDdTqxz7emMP1N9nvMWOfEuoVHUDCT3fe8QNTqXB++mP
 BB+G1+9+qMr65pNkZ0U1k9QF7G8OgiBoMNIXdPCRV22gn2N0mQf5uYzAd6jzNUoaWAodLG9jp
 NMiM1gfYNzUEAk0MmVMg3cAwrDrQSkdPixI+pwLKclGqrhrT8SYF/M1lp4hl0SshLpT5M5osQ
 6BZXgl+GIDQgiRYzetWoigRdtW/GdnvTPDBCghRzRdbES1uNR8mUhFYXBIs20yJTvAESjQPyf
 2lVi5oMM4gahiWzVrmw5gZO4lfAHt1H5+ZrXlN1dStLe388Zqo5+UDPoBVLpdstuGH90vzu8N
 XAU8btlDKx/e4vN5Ydj4sZ0XkeRQA==
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> I guess there is a mixup between interpreter and pathname.

Do you mean that `interpreter' is supposed to be absolute, instead of `pat=
hname'?
The same example also disproves that, since argv[0] is relative:

|   interpreter [optional-arg] pathname arg...
|
| $ ./execve ./script
| argv[0]: ./myecho
| argv[1]: script-arg
| argv[2]: ./script
| argv[3]: hello
| argv[4]: world

> All this is only vaild if the
> flag is set to P (P - preserve-argv[0]) when you add a new
> setting in /proc/sys/fs/binfmt_misc/register

I'm not sure how binfmt_misc is related to this.
We are talking about the normal shebang mechanism (which doesn't preserve =
argv[0]), and the man page doesn't even mention binfmt_misc.
Do you agree that the man page is in error?

> (any way to get the current setting ?)

You can see the active flags for a registered FORMAT by reading /proc/sys/=
fs/binfmt_misc/FORMAT.
(Though I'm new to binfmt_misc, I usually keep it disabled.)

> the original wording from the kernel says:
>
> Legacy behavior of binfmt_misc is to overwrite the original argv[0] with
> the full path to the binary. When this flag is included, binfmt_misc wil=
l
> add an argument to the argument vector for this purpose, thus preserving
> the original argv[0]. e.g. If your interp is set to /bin/foo and you run
> blah (which is in /usr/local/bin), then the kernel will execute /bin/foo
> with argv[] set to ["/bin/foo", "/usr/local/bin/blah", "blah"]. The inte=
rp
> has to be aware of this so it can execute /usr/local/bin/blah with argv[=
]
> set to ["blah"].

According to my tests, no path is ever made absolute regardless of the P f=
lag.
Apparently where it says "the full path to the binary" it doesn't mean an =
absolute path, just a path that resolves to the actual file (and doesn't n=
eed to be searched in $PATH as it may be the case with the original argv[0=
]).

# echo :myecho:M::1::./myecho: >/proc/sys/fs/binfmt_misc/register
# echo :myechop:M::2::./myecho:P >/proc/sys/fs/binfmt_misc/register
$ cat /proc/sys/fs/binfmt_misc/myecho
enabled
interpreter ./myecho
flags:
offset 0
magic 31
$ cat /proc/sys/fs/binfmt_misc/myechop
enabled
interpreter ./myecho
flags: P
offset 0
magic 32
$ echo 1 >script
$ echo 2 >scriptp
$ chmod a+x script scriptp
$ ./execve ./script
argv[0]: ./myecho
argv[1]: ./script
argv[2]: hello
argv[3]: world
$ ./execve ./scriptp
argv[0]: ./myecho
argv[1]: ./scriptp
argv[2]: ./scriptp
argv[3]: hello
argv[4]: world

As you can see, all the paths are relative regardless of the P flag.
