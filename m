Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72A3C677225
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 20:54:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230245AbjAVTyP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 14:54:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229999AbjAVTyP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 14:54:15 -0500
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB4E4FF10
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 11:54:13 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-15ebfdf69adso12020461fac.0
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 11:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7WyNWZTa1luDjIe1g6wG8hF2yD9puzS4n6v5PwFGDHA=;
        b=cVfBmXQ2wb5KlftqVCRHHbnI0XqwlV8Ki3W1i13qy+gmq664PYnP+d5nRzKVn/hPIV
         0IhHPhTyExox5OUDV30ndFMJgWr2Fn/OsbxTxlT/RMZcddpiQASJDAJ7glImVR+9VbPQ
         1iD3gPFSHBZYE1RpvJDRPzVdm9dQQCRblWprmhPnz7Kam1+l/EZkHH+OAWkVMrhpZeLQ
         i/m9tk8rEiGR2lhY4YSwXoDx4n/3B/wlnBoTBwwmwxfXAI5Zglm8r4bkdQ8ugZFjIWZY
         6I0eVGgAxi1aPo+GQdOqCfPTnTGMSaT6kFiUP6TOa/JiGvb5UDsjlTwazRx7sC/0SoKV
         46fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7WyNWZTa1luDjIe1g6wG8hF2yD9puzS4n6v5PwFGDHA=;
        b=YCgHzchegBwr6QwFzTmZ4CUDkIj5/9VXeCkr6LdPf5fxMGzPhZ42AbLeMaACx9FPSx
         Hb5/Nkq7fR+sHTy+8YDYa+u3KBWvFSR3KFtf2Sd+httIavfTrqy9MIm/FWqx/q7GIY2Y
         aRDzkYst/bOObTWjp4xgwgbUUjoPYh3EsPGSzH3vY74qZ8MZiriJjDIX2jWREgKfrcTv
         uBXFcL6KSolvN9sbZA9Px0t7guvaqhCf05QF4HuRktfTPU/xt0wU/wBzR1HuCzW+Nte6
         1GVKSJI4+qoIdrVchG+38u/eG6B6Y3zllmulzAIO8m1CISAU6zTqhWqcmxwYB8BMaXGL
         vY4g==
X-Gm-Message-State: AFqh2koEINaiROdBktC7piIYe83Rb2eVhfX8HjerfjME8KCWk82VX7Yz
        lCg2Rhu4NKaI5soyDT3ORssK06RoWuA=
X-Google-Smtp-Source: AMrXdXvgm2qxkDZE++M0NY9NGL6OrTGdn5VMn2KJfE1MwLQN3cZxVfIaSG21OaG8JYzO1njh6c1OGg==
X-Received: by 2002:a05:6870:b85:b0:15b:848b:f7e5 with SMTP id lg5-20020a0568700b8500b0015b848bf7e5mr10936079oab.31.1674417253209;
        Sun, 22 Jan 2023 11:54:13 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d9-20020a056870d28900b0014b8347e1e3sm24451106oae.12.2023.01.22.11.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 11:54:12 -0800 (PST)
Date:   Sun, 22 Jan 2023 13:54:10 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <20230122195410.2ke5fk3dunh75vip@illithid>
References: <20230122193125.GA28817@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="vvlxm7v6c2lpkawr"
Content-Disposition: inline
In-Reply-To: <20230122193125.GA28817@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vvlxm7v6c2lpkawr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Helge,

At 2023-01-22T20:31:25+0100, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Why hard (and strange) line breaks?
>=20
> "Since, when one uses\n"
[...]

I don't see these "\n" line endings in Git HEAD or the change history of
the page.  Maybe there is a problem with your searching/reporting tool?

I would add that these are not "hard line breaks" in the *roff language.

"\n" is the register interpolation escape sequence.  It must always be
followed by an argument, the name of the register to be interpolated.

Register interpolation should not be used in portable man pages.  But I
don't think it's happening here.

groff 1.22.4 (and earlier) diagnose the incorrect input as follows.

$ printf 'hello\\n\n' | nroff | cat -s
troff: <standard input>:1: a newline character is not allowed in an escape =
name
hello

groff 1.23.0 will be a little more precise.  (The escape _name_ itself
is not where the invalid syntax was encountered.)

$ printf 'hello\\n\n' | ./build/test-groff -T utf8 | cat -s
troff:<standard input>:1: error: a newline character is not allowed in an e=
scape sequence parameter
hello

In any event, "git blame" says the following about the relevant portion
of the page.

a66648bbd1 (Michael Kerrisk     2021-08-17 05:04:11 +0200 1009) Since, when=
 one uses
a66648bbd1 (Michael Kerrisk     2021-08-17 05:04:11 +0200 1010) .BR unshare=
 (1)
a66648bbd1 (Michael Kerrisk     2021-08-17 05:04:11 +0200 1011) to create a=
 mount namespace,
8c9a827429 (Michael Kerrisk     2021-08-18 01:34:54 +0200 1012) the goal is=
 commonly to provide full isolation of the mounts
a66648bbd1 (Michael Kerrisk     2021-08-17 05:04:11 +0200 1013) in the new =
namespace,
a66648bbd1 (Michael Kerrisk     2021-08-17 05:04:11 +0200 1014) .BR unshare=
 (1)
a66648bbd1 (Michael Kerrisk     2021-08-17 05:04:11 +0200 1015) (since
1ae6b2c7b8 (Alejandro Colomar   2022-03-18 20:25:09 +0100 1016) .I util\-li=
nux
b324e17d32 (Alejandro Colomar   2022-12-04 20:38:06 +0100 1017)  2.27) in t=
urn reverses the step performed by
a66648bbd1 (Michael Kerrisk     2021-08-17 05:04:11 +0200 1018) .BR systemd=
 (1),
8c9a827429 (Michael Kerrisk     2021-08-18 01:34:54 +0200 1019) by making a=
ll mounts private in the new namespace.
a66648bbd1 (Michael Kerrisk     2021-08-17 05:04:11 +0200 1020) That is,
a66648bbd1 (Michael Kerrisk     2021-08-17 05:04:11 +0200 1021) .BR unshare=
 (1)
a66648bbd1 (Michael Kerrisk     2021-08-17 05:04:11 +0200 1022) performs th=
e equivalent of the following in the new mount namespace:

That is why I suspect a problem with your tool.

Regards,
Branden

--vvlxm7v6c2lpkawr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPNlFsACgkQ0Z6cfXEm
bc5KoBAArch7LtXVCLuX1DfS18hzpFsnKOHVmCy8Ro2Nr0wF6HycRsQYFOwaiiTU
3efEMb3XJyUwWouggo6PGDLsaQfmFE+2LswOYuXrpuWExBdXUadhqUSybmhvUeKU
q4NebioKjt5CcmUQpMHQ4yYKi4hZFr1aEF2Y5dCGYS3hMO2iFDOx8XhI1vmheMnx
WeoHj5U8cZKhXiMTnnoQwkBOBa2f7oHdJplXObyulFmpEp2p7TfFagyvmRJ5ZAzy
Y1OsDt3tAO0PB0NqT9hu8CM3SOo49GMRUE30JB7BKmjPvILjCeSx5DF3ZhquZ1vA
k5VtsielcbxWHkv0vY4qSYulXBKzAoCOnxHN4KaL01j9CbCzohpUMComP8I5KeIp
SE/o+JMT8zfFm4/QZ+tUjKiqxSjGLvqFCHuarl8ys2He4VX9Z8+R7KRa2vhMcwYD
gwtNtKHhzvh+0nRZ7qgRKZ3IfP0wARTgE38PcsJalzG/Aa+LfJkun58ewALAWWXc
R76j2okngRjjqsQkK6voZfR/A/DVKSlHEeagufYRhk1RLp5sYj58vf9pcnmF7qoS
241JMVCcnN9FbMBitNbRffqlOt2yXhHGPbp/zgEXZrYIfJFJYJcC79YxNYXmUhEN
fna1jFzBHKAzu50nQgKDGjAkuqDk+cFZvYWwLEh35d2E8x0cmvk=
=4x4N
-----END PGP SIGNATURE-----

--vvlxm7v6c2lpkawr--
