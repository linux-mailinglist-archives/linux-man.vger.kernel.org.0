Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36941757AB8
	for <lists+linux-man@lfdr.de>; Tue, 18 Jul 2023 13:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbjGRLmg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Jul 2023 07:42:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231869AbjGRLme (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Jul 2023 07:42:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53CD2E75
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 04:42:15 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B6E6B61381
        for <linux-man@vger.kernel.org>; Tue, 18 Jul 2023 11:42:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A886C433C7;
        Tue, 18 Jul 2023 11:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689680532;
        bh=P/YWrF3Q1fHX7RH3C4jmPHxxr0grEPyPCxXF0UAkFh4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=CjsxwrPXUd73S9WTvFOtHm0zQfl/bXaqKSbZdIdLJns3ddICh5hqi0vz72adnYC+1
         cmkLWkMXuLcNu/o+5LQa1UdUa5FJ/EXH4hFK1aEbb8im37/wbsCRgbr4QflLBfyVGx
         Zlvussg0co5SrI5xqC3TCAN6qPix/tEzXcyp9BYE3oLcUZOhcuzJVg33nsb7cg+Xp7
         VeD9OuvTzZUiBYpqmaJ/51AVZHajUEHo5pGe147YG8OkEjPIEa3pk35gukRFBUaLMo
         LJSzAwUF4Vc/Ft26wEoxNYdWEZgFvp/5usUGBll9xiLGc2ndkXW4n6rKHrcpd5RnKl
         k9XGizWVs4JSg==
Message-ID: <a36f5f50-b81f-4d1e-b2b3-f6237da94d0b@kernel.org>
Date:   Tue, 18 Jul 2023 13:42:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v6] grantpt.3: no-op on modern glibc and other UNIXes,
 HISTORYise
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <7d88523e-d0be-e65e-2dd3-d7776960dde8@kernel.org>
 <4ag7sqe4pro4yguwbik6bdlfs75erm5ftip7c2ukazlubklr7y@ornznqzh7jle>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <4ag7sqe4pro4yguwbik6bdlfs75erm5ftip7c2ukazlubklr7y@ornznqzh7jle>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xbp2Shw8cxZ6SHfUiC348Pgo"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xbp2Shw8cxZ6SHfUiC348Pgo
Content-Type: multipart/mixed; boundary="------------bXEqRlcwmkfa03a6KbIt9yLZ";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <a36f5f50-b81f-4d1e-b2b3-f6237da94d0b@kernel.org>
Subject: Re: [PATCH v6] grantpt.3: no-op on modern glibc and other UNIXes,
 HISTORYise
References: <7d88523e-d0be-e65e-2dd3-d7776960dde8@kernel.org>
 <4ag7sqe4pro4yguwbik6bdlfs75erm5ftip7c2ukazlubklr7y@ornznqzh7jle>
In-Reply-To: <4ag7sqe4pro4yguwbik6bdlfs75erm5ftip7c2ukazlubklr7y@ornznqzh7jle>

--------------bXEqRlcwmkfa03a6KbIt9yLZ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Subject: grantpt.3: no-op on modern glibc and other UNIXes, HISTORYise

Hi!

Please use Uppercase after the ':'.  Rationale: it should (usually) be an=

English sentence, following conventional rules (except for the trailing
period, which we remove).

On 2023-07-18 01:31, =D0=BD=D0=B0=D0=B1 wrote:
> FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open(2)=
,
> and grantpt(3) is a no-op (that checks whether the fd is a pty, except =
on
> musl).
>=20
> The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commi=
t
>  facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
>   Driven Device Naming"), which kills pt_chmod, notes that it's been
>  "6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem").
>=20
> glibc 2.33 completely kills BSD PTY support on Linux
> (Debian hasn't configured with them on any architecture since 2007:
>    https://bugs.debian.org/338404
>  and even earlier on some arches; they're really just trivia under
>  Linux =E2=80=92 this may be better served stuffed into HISTORY as an e=
xplainer
>  for the SIGCHLD thing, since regardless of the "version", the behaviou=
r
>  is well-defined and consistent).
>=20
> There really aren't many cohesive "versions" of this =E2=80=92 indeed, =
so long
> as grantpt(3) exists it behaves precisely as described here =E2=80=92
> inasmuch as different systems, historically, had different ptys,
> and thus different implementations. These are all but trivia.

Please use two spaces after period.  ;)

>=20
> Cc: Jakub Wilk <jwilk@jwilk.net>
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> ---
> I originally thought to do so, but decided against it because I'm not
> substantially changing this paragraph and it's already in VERSIONS...
> Moved with rationale added.

Thanks.  Patch applied.
>=20
> Also, administriva-wise, git pull tells me
>   [PATCH 1/2] statfs.2: unshade as deprecated, but direct to statvfs(3)=

> with msgid
>   <b4b871ffdf8f764ffd6c25039f3944b08748bd3e.1687553930.git.nabijaczlewe=
li@nabijaczleweli.xyz>
> is the last outstanding patch I have rn, sans this one.

I was waiting for you to send an v2 with the fs and inode corrections
suggested by Tom Schwindl.  Is that correct?

It's a bit weird, because IIRC, I had written to confirm what Tom said,
with pointers to man-pages(7), but now I can't find it.  I'll write
(again?) now.

Cheers,
Alex

>=20
>  man3/grantpt.3 | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
>=20
> diff --git a/man3/grantpt.3 b/man3/grantpt.3
> index a19172a3e..949f70de9 100644
> --- a/man3/grantpt.3
> +++ b/man3/grantpt.3
> @@ -83,18 +83,6 @@ .SH ATTRIBUTES
>  .hy
>  .ad
>  .sp 1
> -.SH VERSIONS
> -Many systems implement this function via a set-user-ID helper binary
> -called "pt_chown".
> -On Linux systems with a devpts filesystem (present since Linux 2.2),
> -the kernel normally sets the correct ownership and permissions
> -for the pseudoterminal slave when the master is opened
> -.RB ( posix_openpt (3)),
> -so that nothing must be done by
> -.BR grantpt ().
> -Thus, no such helper binary is required
> -(and indeed it is configured to be absent during the
> -glibc build that is typical on many systems).
>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY
> @@ -103,6 +91,16 @@ .SH HISTORY
>  .PP
>  This is part of the UNIX 98 pseudoterminal support, see
>  .BR pts (4).
> +.PP
> +Historical systems implemented this function via a set-user-ID helper =
binary
> +called "pt_chown".
> +glibc on Linux before glibc 2.33 could do so as well,
> +in order to support configurations with only BSD pseudoterminals;
> +this support has been removed.
> +On modern systems this is either a no-op
> +\[em]with permissions configured on pty allocation, as is the case on =
Linux\[em]
> +or an
> +.BR ioctl (2).
>  .SH SEE ALSO
>  .BR open (2),
>  .BR posix_openpt (3),

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------bXEqRlcwmkfa03a6KbIt9yLZ--

--------------xbp2Shw8cxZ6SHfUiC348Pgo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS2epAACgkQnowa+77/
2zK9ABAAnwbK9VIzm7eXeKKb9/nE9KxuotebLKHu0naiWF1z5nN1YbgdCqt/vdAt
/SkBIvBSv9xNamLAIa5Ljjx7r5pmHTSObr5FImFdfPSxAceQ8OmyRhI+j9xz5H0K
Ttc7Jq9y+R+G3k/XYe2Gx871V6wJb9kdZL/1Rsq9vGzGK1jzon9B4LFPs9T/u34+
B/CVz9QlJ3dWRd9fKR7ZdNm7FhVZwZIJrOumfZGBkf+8VjrVYukBPgcIDaLGaQ3f
09a6bc5GTVlKSxkU2xoyIUZoZKaN5GO9BuFpTkZHmZu2fFYI+Z2r4lt/HC/yTjwX
v5DJFuPJSBJVTN1RPRFcb+2xkyx92YPH+q8sM+LsLUPTOKXaBe3Uiooi9vmus5uz
9nBPkxu1hVCCfWsrJAn47eul2ZI95ouQ4JV+kIOMhncHKN6d7O03FXhA5df7bnzr
c087LHcuiUYSCJOjJpB9N7vvLwjL0SxEWUD1uigzSTL+hG2GDD4KJmgLruQyZO2a
zVKKB83ReDtKxT6npMktOxl7corSptvc3qA8Jm5U3UTu/gF5ZP3/fsmGrxGCubFi
0LQf5dk1xBBOgCM3+BZQ5laaeuMNc8bshMhXwlTl8XOo61nVkKWw8qNfB5tDq7fH
Tkg7hKxcC43AkrHKL/XfiJshBUCQys/xo7i3BzoIHUhFNfLTyDA=
=wh66
-----END PGP SIGNATURE-----

--------------xbp2Shw8cxZ6SHfUiC348Pgo--
