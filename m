Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3C136DBDD7
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 00:39:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229518AbjDHWdv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 18:33:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbjDHWdu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 18:33:50 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B279783F0
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 15:33:48 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id v14-20020a05600c470e00b003f06520825fso6081146wmo.0
        for <linux-man@vger.kernel.org>; Sat, 08 Apr 2023 15:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680993227; x=1683585227;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YyU43zmxszY2ZBYbK0ICXKk88Hv+4qFvKKmuddRG2Ts=;
        b=AgcHG5nDcWaM+++ZyXoHVH2w9twBKiWKp5ADZs23fxCdhW4WBjY/9s6EGImp712QTY
         69huV4zkWvUh1Sa4GbaeG8VeqC992TZKqsZXYbN/AtpiHNLDr4bgmkBtohppy+VsskF7
         HkIKXK+zB9SRJIr1zFQvyRqKFvS1sTExTO8u0gy7fQeKg8iTwVAzbSYd0VqIkV6KCuzZ
         CzEGgTDhBkyEGyMNIsyjwvdw9EI9FfQ/tMY2vKGJPcaOI+AeJMk26DSn+k3UHmeX/Z8V
         gOkClZN5m2JZ1NXWVbaX/xv97uy7x1WHS5I6t4kKkGozbJKjntmzwup9cPP4DM1cKQwz
         rc3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680993227; x=1683585227;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YyU43zmxszY2ZBYbK0ICXKk88Hv+4qFvKKmuddRG2Ts=;
        b=elNnaQhLUXZhihFY2NkPJdmxmwLQGxWuAf98pFRC1M4abOObsW3dz0OyBuo2HCCydG
         SmEtisMDZQZfa2Dkj7WZ63JMRWs5QszsH3mYZz2Lkla9Q8hhdFLR6xHurHNdb79SEAPS
         WPewaENqQUHdC6UF9Ut4nDcDSzlRx80Jh1nOAXlpG8ORVRpUKoa+Rpz/JHFesJUpeaM3
         TcKl/4IUwDozuDcL+ejD64qlqqe+l9CsUQ9mpFLIbRMvE2klEQE3dBFq8rzy7UN3rDfh
         cqc29CIY0rQXvfQ+rGMuv8a1b6BnQQCffwTBZ7ZX7HjBhp4LgXwB/46qR0dQIAonYrNE
         OP7Q==
X-Gm-Message-State: AAQBX9fH5uYKfLdft98aGi+kY4Tyfd3d9Ud6NX5OPwJ0Zja4tvTDBIBt
        +AEyzQ8N+lZkx0zqMCbKQNo=
X-Google-Smtp-Source: AKy350atCmlYt2ppsQNRIbn/8CFn3GAnxuRG60WXbXR+hk24RnPnptwGrrpGXDtBkKVwmVnZhS/C6Q==
X-Received: by 2002:a05:600c:21c8:b0:3ed:bc83:3745 with SMTP id x8-20020a05600c21c800b003edbc833745mr4002337wmj.25.1680993227029;
        Sat, 08 Apr 2023 15:33:47 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u20-20020a7bc054000000b003eb596cbc54sm9074653wmc.0.2023.04.08.15.33.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Apr 2023 15:33:46 -0700 (PDT)
Message-ID: <2f090b71-9164-2a92-01c6-5814bfb95d19@gmail.com>
Date:   Sun, 9 Apr 2023 00:33:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Accessibility of man pages
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     cjwatson@debian.org
Cc:     linux-man@vger.kernel.org, help-texinfo@gnu.org,
        nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
        groff@gnu.org, Dirk Gouders <dirk@gouders.net>,
        Eli Zaretskii <eliz@gnu.org>, Ingo Schwarze <schwarze@usta.de>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
 <ZDFwisXkZNvthBc6@riva.ucam.org> <ghh6tqkveq.fsf@gouders.net>
 <83bkjym9bw.fsf@gnu.org> <ghcz4eksp5.fsf@gouders.net>
 <3770fc9f-a098-6696-8510-b1f583f06992@gmail.com>
In-Reply-To: <3770fc9f-a098-6696-8510-b1f583f06992@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Rh4gKuETVWy3LdlHFWE0Hseg"
X-Spam-Status: No, score=-0.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Rh4gKuETVWy3LdlHFWE0Hseg
Content-Type: multipart/mixed; boundary="------------V1OLB1LgDlBTvdP9NVvPQAad";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: cjwatson@debian.org
Cc: linux-man@vger.kernel.org, help-texinfo@gnu.org,
 nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
 groff@gnu.org, Dirk Gouders <dirk@gouders.net>, Eli Zaretskii
 <eliz@gnu.org>, Ingo Schwarze <schwarze@usta.de>
Message-ID: <2f090b71-9164-2a92-01c6-5814bfb95d19@gmail.com>
Subject: Re: Accessibility of man pages
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
 <ZDFwisXkZNvthBc6@riva.ucam.org> <ghh6tqkveq.fsf@gouders.net>
 <83bkjym9bw.fsf@gnu.org> <ghcz4eksp5.fsf@gouders.net>
 <3770fc9f-a098-6696-8510-b1f583f06992@gmail.com>
In-Reply-To: <3770fc9f-a098-6696-8510-b1f583f06992@gmail.com>

--------------V1OLB1LgDlBTvdP9NVvPQAad
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/8/23 23:53, Alejandro Colomar wrote:
> Colin, did I do anything wrong to have this slowness in man(1) with
> uncompressed pages?  Also, it's finding some repeated lines; did we
> find a bug?
>=20
>=20
> $ man -Kaw RLIMIT_NOFILE
> /opt/local/man/expanded__/share/man/man3/errno.3
> /opt/local/man/expanded__/share/man/man2/select.2
> /opt/local/man/expanded__/share/man/man2/select.2
> /opt/local/man/expanded__/share/man/man2/select.2
> /opt/local/man/expanded__/share/man/man2/select.2
> /opt/local/man/expanded__/share/man/man3/getdtablesize.3
> /opt/local/man/expanded__/share/man/man3/mq_open.3
> /opt/local/man/expanded__/share/man/man3/sysconf.3
> /opt/local/man/expanded__/share/man/man2/fcntl.2
> /opt/local/man/expanded__/share/man/man2/fcntl.2
> /opt/local/man/expanded__/share/man/man2/open.2
> /opt/local/man/expanded__/share/man/man2/open.2
> /opt/local/man/expanded__/share/man/man2/open.2
> /opt/local/man/expanded__/share/man/man2/poll.2
> /opt/local/man/expanded__/share/man/man2/poll.2
> /opt/local/man/expanded__/share/man/man2/seccomp_unotify.2
> /opt/local/man/expanded__/share/man/man2/pidfd_getfd.2
> /opt/local/man/expanded__/share/man/man2/dup.2
> /opt/local/man/expanded__/share/man/man2/dup.2
> /opt/local/man/expanded__/share/man/man2/dup.2
> /opt/local/man/expanded__/share/man/man2/getrlimit.2
> /opt/local/man/expanded__/share/man/man2/getrlimit.2
> /opt/local/man/expanded__/share/man/man2/getrlimit.2
> /opt/local/man/expanded__/share/man/man2/getrlimit.2
> /opt/local/man/expanded__/share/man/man2/getrlimit.2
> /opt/local/man/expanded__/share/man/man2/pidfd_open.2
> /opt/local/man/expanded__/share/man/man2/select.2
> /opt/local/man/expanded__/share/man/man2/select.2
> /opt/local/man/expanded__/share/man/man2/select.2
> /opt/local/man/expanded__/share/man/man2/select.2
> /opt/local/man/expanded__/share/man/man5/proc.5
> /opt/local/man/expanded__/share/man/man5/proc.5
> /opt/local/man/expanded__/share/man/man7/capabilities.7
> /opt/local/man/expanded__/share/man/man7/fanotify.7
> /opt/local/man/expanded__/share/man/man7/unix.7
>=20
> $ grep -n RLIMIT_NOFILE /opt/local/man/expanded__/share/man/man2/select=
=2E2
> 412:.B RLIMIT_NOFILE

Ahh, it seems to be following symlinks as if they were actual pages.
But for some reason this only happens for uncompressed pages, and not
for .gz pages.  Bug here :)

>=20
>=20
> Cheers,
> Alex
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------V1OLB1LgDlBTvdP9NVvPQAad--

--------------Rh4gKuETVWy3LdlHFWE0Hseg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQx68IACgkQnowa+77/
2zIq2A/+OuNkTLANrO4VB1zMkmSjMmRbVuTbTHAIhHY3Wqc99eattOpiKhp6rzaT
Hiw53WSAJOawLc2Yh4PSUsJxF0cSryseFfonMk5RCTFCbqNP6/2z9hL9N82Dyeai
GV4t4I3YH6gza79o5Pwhr6LK9PS3z38QZ6EWwprWrv+SK9+y0z2VEwX0nR4Kkd0v
aqzj/MBjzjb8rd7uoGbTz0NWnagj0UXiJt0uwpv8qf/yuyUoRjrXMzzQuqamZ48P
K76c3arAx3BR0pgql3C6uBb8T7IuqLfGk0mBW9jevn82XLRH7iO70L8Ga6YTCzka
xVKocLVN2Dxt+lZySFAeQBv4R5PUoS+3qFklu6cIohUFWEHYybVRlSzrTvQRh8RZ
7SmdJ30C+Z8goTv3cEM16ZtcPjn7zVyg8S6Rpj/Aube5UC2f8+K4N8YThUiaQqKy
QbAUtL6gVkqOfJPnk0Bf1ax9IfAnxO4HG6wSkZVWsQY4oQgqt7z5vK39ZFRmMURh
cHoWSYVQJQcd0FFDWWbB/fvqTUBkDUOAk0qyR22kaRulPw7W8obT4fFUIdwgnfSd
SX8ldAb09I0m+W6Ev+YGfMOs6mBzLDZXvpAZOWWWzrlEh8AwSpFJIslq2VkvImSa
J87QCtIk8p6fc0WBPp0WX998Tnp4C6M0QzFB3vgW5o2M/iat09M=
=M7Tb
-----END PGP SIGNATURE-----

--------------Rh4gKuETVWy3LdlHFWE0Hseg--
