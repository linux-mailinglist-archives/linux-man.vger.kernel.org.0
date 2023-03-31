Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C2AA6D2B80
	for <lists+linux-man@lfdr.de>; Sat,  1 Apr 2023 00:47:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231443AbjCaWrR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 18:47:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbjCaWrR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 18:47:17 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31FF140C4
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:47:15 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id l37so13777472wms.2
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 15:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680302833; x=1682894833;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fEC2q/EJ19H6bLHguz5RypyjqiKCMziiyiTExHUZX8M=;
        b=HphvDGGvOf8yPowSzMAX7tGZFu+kzH70cJMYQcPNppTcqFbn1eI3E2DQWcn5sWko86
         rSdSlro1pSMYYLcIriFCyTSlJRDuGST5td7vrKnxfmPg88CjmsvXe2ecLJL1EOSPmro4
         mdmsIoHw5cvI/9TLWhRn1q95OvboDulx43BJ3gekvFyeBj8Y5wRSZQvdX4SIeVCDfpi7
         FfSQw/MA/TA2EK3ocOzToyHDXUByybf9krcE9G2L1NciMHbEYsYV2lFuu+xH6rnOVYYG
         O76AXhL5lBUucJLnYS/hGi5NdthIEZ3bPWl3k21HNN50JHcV9R7BGUTHdU4SxjBKn/W7
         ZM1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680302833; x=1682894833;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fEC2q/EJ19H6bLHguz5RypyjqiKCMziiyiTExHUZX8M=;
        b=gIqS7BQPZhkUNVTzn/1DqQfQ/F+tXqCFL4fEzKgNVbxjd4Cjh1fJatYJ+i9IZEggUa
         w5JRDirjNTjBU5mBLdPJbKbgfh2WfglFisnuVXVMeYgEBZkHMKAUir/wPMKXk7S54VQ+
         VG7ZrAZJpuNqUTRGqczrz4KlOySE+XidRD5QqUesGv04lFhXc3eYTfr7zRNuTdkpk0DJ
         zUFWUmXSmKml0K0KNmikyxfKK4zsgQ0qNjVQWjkha39K4EFkC1Fh7f0d/5SyxIXIUMai
         /RXvu4CXLw/XPw74mzNnON9gLZJHe5+bWYKpw5V1OBeOksoM6yXJmJdPZLs3ux/Eh/jN
         7PWg==
X-Gm-Message-State: AO0yUKUmzDtYaRwnaFCw4dlH2rZCNqfoQGjqt4uv5PKqK0AtYL7QQ1wf
        QA7/evAe7zX5DE3RIIEJtO8=
X-Google-Smtp-Source: AK7set/lRG3Uf9XcVcqnnmNbczkBq6ZPrhoOxzzEbpI/tetGX2cDVnAf4TO0Fr5pG6cTwZtUdo18Mw==
X-Received: by 2002:a05:600c:2312:b0:3dc:4fd7:31e9 with SMTP id 18-20020a05600c231200b003dc4fd731e9mr23429277wmo.7.1680302833649;
        Fri, 31 Mar 2023 15:47:13 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id 5-20020a05600c228500b003e91b9a92c9sm4015244wmf.24.2023.03.31.15.47.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 15:47:13 -0700 (PDT)
Message-ID: <b96b81ff-884c-1b67-cadf-a43c13dd71d6@gmail.com>
Date:   Sat, 1 Apr 2023 00:47:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] proc.5: Fix caps needed to read map_files contents
Content-Language: en-US
To:     Younes Manton <younes.m@gmail.com>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, imachug@yandex.ru
References: <20230117180336.352611-1-younes.m@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230117180336.352611-1-younes.m@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8xUNKotOJRBB5OwbEBJZ0Eu9"
X-Spam-Status: No, score=0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLY,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8xUNKotOJRBB5OwbEBJZ0Eu9
Content-Type: multipart/mixed; boundary="------------fhy9T0bWtZcDf7cyIn6xDc0n";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Younes Manton <younes.m@gmail.com>, mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org, imachug@yandex.ru
Message-ID: <b96b81ff-884c-1b67-cadf-a43c13dd71d6@gmail.com>
Subject: Re: [PATCH] proc.5: Fix caps needed to read map_files contents
References: <20230117180336.352611-1-younes.m@gmail.com>
In-Reply-To: <20230117180336.352611-1-younes.m@gmail.com>

--------------fhy9T0bWtZcDf7cyIn6xDc0n
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Younes,

On 1/17/23 19:03, Younes Manton wrote:
> imachug@yandex.ru testing CRIU noticed that the documentation for
> proc's map_files directory with respect to CAP_CHECKPOINT_RESTORE and
> namespaces appears to be wrong. The text reads:
>=20
>> since Linux 5.9, the reading process must have
>> either CAP_SYS_ADMIN or CAP_CHECKPOINT_RESTORE in the user
>> namespace where it resides.
>=20
> The reporter noted that the user actually needs the capabilities in
> the initial user namespace, not in the namespace the process resides
> in. As far as I can tell this appears to be the case.
>=20
> The text was introduced in 167f94b707148bcd46fe39c7d4ebfada9eed88f6
> and refers to kernel commit 12886f8ab10ce6a09af1d92535d49c81aaa215a8.
>=20
> The code and message in the kernel commit refer to the initial user nam=
espace.
>=20
> An example program and shell session verifying the existing behaviour
> follows:
>=20
> $ uname -r
> 5.15.0-52-generic
>=20
> $ ./test.sh
> + make rmf
> cc rmf.c -o rmf
> + sudo setcap cap_checkpoint_restore-eip ./rmf
> + ./rmf
> 19582: =3D
> Can't read map_files/ entry: Operation not permitted
> + sudo setcap cap_checkpoint_restore+eip ./rmf
> + ./rmf
> 19588: cap_checkpoint_restore=3Dep
> + unshare --user ./rmf
> 19591: cap_checkpoint_restore=3Dep
> Can't read map_files/ entry: Operation not permitted
>=20
> $ cat rmf.c
>=20
> int main(int argc, char **argv)
> {
>     DIR *mfd;
>     struct dirent *mfe;
>     struct stat mfstat;
>     int ret;
>=20
>     system("getpcaps $PPID");
>=20
>     chdir("/proc/self/map_files");
>     mfd =3D opendir(".");
>     do {
>         mfe =3D readdir(mfd);
>     } while (!strcmp(mfe->d_name, ".") || !strcmp(mfe->d_name, ".."));
>     if (ret =3D stat(mfe->d_name, &mfstat))
>         perror("Can't read map_files/ entry");
>     closedir(mfd);
>=20
>     return ret;
> }
>=20
> Signed-off-by: Younes Manton <younes.m@gmail.com>

Thanks a lot for the detailed commit message.  And sorry for the delay!
Patch applied.

Cheers,
Alex

> ---
>  man5/proc.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index 1217cea89..981310562 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -1267,7 +1267,7 @@ since Linux 5.9, the reading process must have ei=
ther
>  .B CAP_SYS_ADMIN
>  or
>  .B CAP_CHECKPOINT_RESTORE
> -in the user namespace where it resides.
> +in the initial (i.e. root) user namespace.
>  .TP
>  .IR /proc/ pid /maps
>  A file containing the currently mapped memory regions and their access=


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------fhy9T0bWtZcDf7cyIn6xDc0n--

--------------8xUNKotOJRBB5OwbEBJZ0Eu9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnYvAACgkQnowa+77/
2zLukQ/+MxzJdkjctxTCzTqbQzCytXNN3SDbU7Q1PjgK9it8WqPbIauBsU4EU5PH
Q0t3iy0HsxKzHuXots4+30snvSwYG0gCCTyc2qt75dm8GsDaHIJ3k/kOMHbZuvP+
dFDjkPVO1JE5iFui9eSZ7lqHtXmZHZSy4DO2xlkxafG76qrRVdzEgt6fQWjyb2Mg
MCkrDNhzgAIp8HWJxD2ZPRjRm+cwHNMeH+RyDjFJ6nLgqFysNbedzeNYNI8OiAWn
waCRA6ETqidbzBuXkWrHX6BT8+dV2n1LdLPljRBnn83vUss1cUh5dW9TayvlPEWN
+NZ0o5B1vn62gBYXSzsoJySmCm1HfHyQNmkkjAuPB9bzFuA8lX1kUqA/tmmdtnum
I+vVkFBalb1H49d/nE4OIfgTJt//Lr68qaRnBGgQW1LwTjwxmUFUbSi9yH+0l069
J5Xp3rvMoywD7vv+XVGnCkM8teWq2E3hmkIPMY4sqoSQtm6Qp/nc3+oIYbLR6rON
i7klBtP+BqFYK9ceYJW3eGsXOhXtr3hWeYxdQcpd9Ghm1IhEzLj40qTCjvnmSHVz
6p6ESOsifBvN25CPeDOqyCHQCDbO64epcXTEWnWKnpA9XCqY4gAYKT/7Nd7Ji+1C
TAkqdK25mLcboHTfBV72bTdZT0LhJwOLvolopFCiHuQPsO9yED4=
=tpxk
-----END PGP SIGNATURE-----

--------------8xUNKotOJRBB5OwbEBJZ0Eu9--
