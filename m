Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B24C6DC039
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 15:58:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229511AbjDIN6l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 09:58:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjDIN6k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 09:58:40 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 880213AB3
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 06:58:39 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id q29so2360953wrc.3
        for <linux-man@vger.kernel.org>; Sun, 09 Apr 2023 06:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681048718; x=1683640718;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=FK4JqMfB62AD4FzsPlVWQgCmPNDtPk9A30lk5mst3u8=;
        b=nUM1uYcdCll5PVRXY0ptKlzfh/RmU3m+zWnYPk8DDm72F6NgXv++XntI1mq/+adE7f
         LNM4BjdiXcNSUNEp0Frd88hr7+3feA6dVcIn45hwq3ZEf9YJHEpzGPONZel7VTEXS27O
         sXUvP5L0Mwi0iWb3LOrYUmBj9Bi2r5CyqAa/ZcDzc/CT+GLAsEX1C/PvGxsQCQbLQS4k
         5S4udLL0VhNBnHGh5mnoWZA5ZZuxw7KWxaEvZIW9jd9c795gWzx+Uvn9q1Wy9Q00fZly
         ybtuM7JCqek6+R+/mCI0KQ9Okqjcvyd3OmyN208skRVj9oTITDf2CDC5eYVMvHd8k5f8
         VyAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681048718; x=1683640718;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FK4JqMfB62AD4FzsPlVWQgCmPNDtPk9A30lk5mst3u8=;
        b=yaBdb6512ab7+KFgK9aOhhA61tfRx1KdwJFdLO+11xqRyS8idecufA+hIxWppQ8lVL
         XVVjX3BRA9HiQuHKdoijhQretSy2saRYRELZ8TpXCa8dOT/rikZ9QBuGGl38zmCjbVEK
         tpOoBKEQQUdjEhjCBV9hTOXAyEqQvAPn4g7Pgfn+uIZdo8KkwNt8grbH2fkj16N9vBfy
         0Tg6c7fx83ETwrdixNwthpy3C20i5DtvvCPEyuxid9G67WNCrnRBI5UoaNGHl+OmzCR6
         zgJhrFCh/0c7x+Qsorfem1cwedfqkXJ15OTliELqU+S6ylND9c46cCYMSp9CmJaHGQZe
         n6Sw==
X-Gm-Message-State: AAQBX9cRvyEMvaUy6/IsyAKB/RcOp6DArggQZUWsyYk0xNjzdXsTEW1b
        tmB7YlHqGNfqQA8HYUz7KGnDCg8jm3c=
X-Google-Smtp-Source: AKy350bysoI4eS7+ucKeIpuPhwNiD9O/UqbuAo5ww9RXNbncI7BDUzmDT/Hw+WnwwpCsRVPClsBUmQ==
X-Received: by 2002:adf:e952:0:b0:2c8:9ab8:85f9 with SMTP id m18-20020adfe952000000b002c89ab885f9mr4932917wrn.40.1681048717906;
        Sun, 09 Apr 2023 06:58:37 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id v14-20020adfe28e000000b002e4cd2ec5c7sm9295316wri.86.2023.04.09.06.58.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Apr 2023 06:58:37 -0700 (PDT)
Message-ID: <a93419ac-b06a-41d3-7c82-339f1773ee76@gmail.com>
Date:   Sun, 9 Apr 2023 15:58:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To:     Colin Watson <cjwatson@debian.org>, man-db-devel@nongnu.org
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: man -K finds repeated entries for each symlink page
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8d0aw8AYdVkptsxPswLOhkyF"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8d0aw8AYdVkptsxPswLOhkyF
Content-Type: multipart/mixed; boundary="------------JQNCfEeHZDQtMebDnDp607cW";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Colin Watson <cjwatson@debian.org>, man-db-devel@nongnu.org
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <a93419ac-b06a-41d3-7c82-339f1773ee76@gmail.com>
Subject: man -K finds repeated entries for each symlink page

--------------JQNCfEeHZDQtMebDnDp607cW
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Colin,

For a reproducer, run the following commands from a clone of the Linux
man-pages repo (although you should be able to reproduce in any Debian
installation, I guess).

$ sudo rm -r /opt/local/man/
$ sudo make install-man2 prefix=3D/opt/local/man LINK_PAGES=3Dsymlink -j =
| wc -l
503
$ export MANPATH=3D/opt/local/man/share/man
$ man -Kaw RLIMIT_NOFILE | sort | uniq -c
      3 /opt/local/man/share/man/man2/dup.2
      2 /opt/local/man/share/man/man2/fcntl.2
      5 /opt/local/man/share/man/man2/getrlimit.2
      3 /opt/local/man/share/man/man2/open.2
      1 /opt/local/man/share/man/man2/pidfd_getfd.2
      1 /opt/local/man/share/man/man2/pidfd_open.2
      2 /opt/local/man/share/man/man2/poll.2
      1 /opt/local/man/share/man/man2/seccomp_unotify.2
      4 /opt/local/man/share/man/man2/select.2

Those numbers coincide with 1+ the number of symlinks for each of the
pages.  For example, see select.2:

$ find /opt/local/man/share/man -type l | xargs readlink | grep -c /selec=
t.2
3

man(1) found the original page, plus the 3 symlinks.

The solution should be that man(1) ignores link pages for -K, since
looking at the source code of one page won't change the results from
a different page.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------JQNCfEeHZDQtMebDnDp607cW--

--------------8d0aw8AYdVkptsxPswLOhkyF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQyxIQACgkQnowa+77/
2zISiQ//cAJQ9WbVa1t4ud8+7XgzJnULsp5aXyuFe8++t1Qj0ZOHgUzN4vky9GhR
jfnCkl2uBRaAacsDLmsQxLDZBGvOgYFwNK6wa1K/6txLm2l6O5bwr2T0A9APtOv/
aRKTVqEY1V61oStbPdiKHNndXv63U1yjcQ2iNOnsCrf7PrMTjABTCcysJPayJw2G
WvRhrgP9jKWyzEsfplTnweHU1ze7BX9Go8P5bFNmCMiBpRfTw4NoZiz2cuUnWX09
XK5GAgcgW7TKbYeGbizHCp78xjOYm4GAVN7UUNuEIOxAmIKQMYTLDqNCYZprsqN4
uSqsouJNR+jbrn1+ll3a9x+gB4l88jGhXDj0VE0tfEQTaEr/fuzUAwKGJkIEMkGy
pO9zYX7qv6tJQohHw66M9GK9F7G79l4+ErE/VheJctEgQ0M4hLtmWLBDJSsWDMs1
ezHhsJYng4jr+qgIlktLvLdhNEOsJpG1W2sbF+DV/nAOeB/M76BSU+rTLIXaAonr
ODZJ8RW2SIw155zu/hq/pZfQrrRok7fSEYLdsc4wQN8CyNOPkvNh530iVOywHbiJ
B9mJS42y3yRZPPJKeXqhQEtlt7AuT2XXtBZM3Ld2phuIi3UjJU7smOWHe4e4sMhx
fu0GmohPvTVPFhfZcFW364LUFnMyyl8dnTMMoXDmAbxM7ULxf/Y=
=6JSO
-----END PGP SIGNATURE-----

--------------8d0aw8AYdVkptsxPswLOhkyF--
