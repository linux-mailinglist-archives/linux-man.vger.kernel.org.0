Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 420057C970F
	for <lists+linux-man@lfdr.de>; Sun, 15 Oct 2023 00:33:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbjJNWc7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 Oct 2023 18:32:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbjJNWc7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 Oct 2023 18:32:59 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BDEFD6
        for <linux-man@vger.kernel.org>; Sat, 14 Oct 2023 15:32:57 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65649C433C8;
        Sat, 14 Oct 2023 22:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697322776;
        bh=mcwJYFKmgBDEe8m3zCn+QH4mat6wgE2FGvj0Tyf2+pQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=q/gssKfAqWVXeHWifqgibms8zOd9uHO0yfGJS2W1cH+ZPBt0cVpEelo++2kVZa8oO
         l2TcPX0bIJ4z6pX8bk/i29pNsL320gSa2ejzWO4cTz1AGNwy78Ntxk/u3rVkbyq7Yi
         PxQOmn1Db4XKTE+uN2Az0Qu0Xo9wf/h46ZojCL54ReJkwUNAMEDEvpvrFny/rh79Gm
         h2Cs2VZpHeil4jk6Hd7sAZFcGC67eIjIXmRQLAhYMTQ2ez5wBF3YXaelJgfLMxl+Q6
         A3vQbIdaV6hhSY7gKdxf/TPvGlb4TjDZe6OEQB2S5xDRPp88fmrzkMdeyQLsAeXtCg
         AKXafWNGnpihA==
Date:   Sun, 15 Oct 2023 00:32:52 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Florent Revest <revest@chromium.org>
Cc:     linux-man@vger.kernel.org, joey.gouly@arm.com,
        akpm@linux-foundation.org, keescook@chromium.org,
        catalin.marinas@arm.com
Subject: Re: [PATCH v2] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
Message-ID: <ZSsXFTkMkQn-c2hM@debian>
References: <20231011114744.2563619-1-revest@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="XhFEVSa6VS3fMo89"
Content-Disposition: inline
In-Reply-To: <20231011114744.2563619-1-revest@chromium.org>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--XhFEVSa6VS3fMo89
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 15 Oct 2023 00:32:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Florent Revest <revest@chromium.org>
Cc: linux-man@vger.kernel.org, joey.gouly@arm.com,
	akpm@linux-foundation.org, keescook@chromium.org,
	catalin.marinas@arm.com
Subject: Re: [PATCH v2] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE

Hi Florent,

On Wed, Oct 11, 2023 at 01:47:44PM +0200, Florent Revest wrote:
> Memory-Deny-Write-Execute is a W^X process control originally introduced
> by Joey Gouly. I'm the author of the PR_MDWE_NO_INHERIT flag.
>=20
> Signed-off-by: Florent Revest <revest@chromium.org>
> ---

Patch applied.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D457ca4a9ae3eae9835a5c011851c4eb88b49d322>

Thanks,
Alex

>=20
> Diff since v1:
> - Use semantic newlines
> - Document that PR_MDWE_NO_INHERIT requires PR_MDWE_REFUSE_EXEC_GAIN
> - Use "bit mask" instead of "bitmask" according to the style guide
> - Removed an empty comment line
>=20
>  man2/prctl.2 | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>=20
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index d845b0905..83060edd9 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -2041,6 +2041,36 @@ the copy will be truncated.
>  Return (as the function result)
>  the full length of the auxiliary vector.
>  \fIarg4\fP and \fIarg5\fP must be 0.
> +.TP
> +.BR PR_SET_MDWE " (since Linux 6.3)"
> +.\" commit b507808ebce23561d4ff8c2aa1fb949fe402bc61
> +Set the calling process' Memory-Deny-Write-Execute protection mask.
> +Once protection bits are set,
> +they can not be changed.
> +.IR arg2

This should've been .I.  I've amended the patch:

diff --git a/man2/prctl.2 b/man2/prctl.2
index 83060edd9..de53acfb0 100644
--- a/man2/prctl.2
+++ b/man2/prctl.2
@@ -2047,7 +2047,7 @@ .SH DESCRIPTION
 Set the calling process' Memory-Deny-Write-Execute protection mask.
 Once protection bits are set,
 they can not be changed.
-.IR arg2
+.I arg2
 must be a bit mask of:
 .RS
 .TP

> +must be a bit mask of:
> +.RS
> +.TP
> +.B PR_MDWE_REFUSE_EXEC_GAIN
> +New memory mapping protections can't be writable and executable.
> +Non-executable mappings can't become executable.
> +.TP
> +.B PR_MDWE_NO_INHERIT " (since Linux 6.6)"
> +.\" commit 2a87e5520554034e8c423479740f95bea4a086a0
> +Do not propagate MDWE protection to child processes on
> +.BR fork (2).
> +Setting this bit requires setting
> +.B PR_MDWE_REFUSE_EXEC_GAIN
> +too.
> +.RE
> +.TP
> +.BR PR_GET_MDWE " (since Linux 6.3)"
> +.\" commit b507808ebce23561d4ff8c2aa1fb949fe402bc61
> +Return (as the function result) the Memory-Deny-Write-Execute protection=
 mask
> +of the calling process.
> +(See
> +.B PR_SET_MDWE
> +for information on the protection mask bits.)
>  .SH RETURN VALUE
>  On success,
>  .BR PR_CAP_AMBIENT + PR_CAP_AMBIENT_IS_SET ,
> --=20
> 2.42.0.655.g421f12c284-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--XhFEVSa6VS3fMo89
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUrFxQACgkQnowa+77/
2zIPNBAAoayNEPaOKFmhgs+CsyRmrMK1Q7O68g3YArebhWxNaXaIE9EHrBE/gpkk
aRfNfz+KckFTA/H5RPVSVweDtZFjwXaREf8XBR/Pz2gGpn9dQk0s7L19l352dA5X
o98rkGcsnvv7M65pCYSLRl4k7a+m9dPSQs+Sfi5HlMLyKPvjXuH3UmiZ6mTcq5+k
taYOmQvpGPEq8j8lf0h6u1trD0O5Dy+28twUfYUcsNDg+uD7VCnmw7hcZ/7jXkYS
GKYAzASuySLzxSARxe6uw/wEoatXoL8PWZn65qNnjKMXvGwLVi0s97DKiA/5IJhr
DIT7OdJ53FPCWC5uF3LFGEV2L48O/RqUttN+OW5mGF/ICG+RaNEFrr3kHaCX7N4S
iEj4TMY3kFBXKx2Uu1sBZGJAMOTE/ND05+8uH3pc5+3fvR5XcPJWSBhPuN383fHP
5LWjpgS+kwT/FH0zEGHF7mASSNhWc13YbOW1q4zqLl/Pe53tQ3TubAl6Z0dennOh
jyBdeWRvvyvESw+vRX0fv6VXHmRf/Itx+cKnpHkU+crqjgqzhqntOJai49LIaKTX
WlEGKo9Atz1sFK9BycZZiOJ+bqC0xzbCxLJgj8NKgz6O2rgjBzLr+yX5ZcLeS3VH
/q/sPIkv0w51UZ/8vG0l9lwFRtQKkglUQVATIwj4Z4mwtJxqZvo=
=E/pn
-----END PGP SIGNATURE-----

--XhFEVSa6VS3fMo89--
