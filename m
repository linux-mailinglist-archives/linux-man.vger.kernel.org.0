Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 996BF7BD055
	for <lists+linux-man@lfdr.de>; Sun,  8 Oct 2023 23:39:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbjJHVjK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Oct 2023 17:39:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229706AbjJHVjK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Oct 2023 17:39:10 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 451829D
        for <linux-man@vger.kernel.org>; Sun,  8 Oct 2023 14:39:08 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A575C433C7;
        Sun,  8 Oct 2023 21:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696801147;
        bh=5p2oFVKm67inhs0w29YeVYo1vr35eiAxHhTINICvz84=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=GuEOUhYhAIUTZNQ53fyrSP3btwUfF2YxpoqKWXCqLXix4THiEq5MpsoDpK1W9IGRd
         Bc0yxoPWxgTiTc/MPENCg9kKutNEIhOln5bOhEBTt8ruDr+eLCV1u/fSKdnuUF41Ak
         npp5XiHapvxLo0Igvn6wAbMpb1S8XxG9R2eb8LPzYLw7Sr/+l6WhHrW2b2fadPjUoC
         YY15aeig7sJ69G9bZLhf+ibZsP1NdIzvaM/oExKXVUJ14TMkRY1ug5ydCfsVqpPIAv
         SORCPKwFCWyRp4XWA3DGfwd9bMcv8EsrRmRYR4luKrggsEQZxG9mzSv4ZErjUTfRmx
         3V2Fw6HRx2WiA==
Date:   Sun, 8 Oct 2023 23:39:03 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Florent Revest <revest@chromium.org>
Cc:     linux-man@vger.kernel.org, joey.gouly@arm.com,
        akpm@linux-foundation.org, keescook@chromium.org,
        catalin.marinas@arm.com
Subject: Re: [PATCH] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE
Message-ID: <ZSMhd-TnoKm2u1vK@debian>
References: <20231003155010.3651349-1-revest@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="YxVJgn62VT/9IZQh"
Content-Disposition: inline
In-Reply-To: <20231003155010.3651349-1-revest@chromium.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--YxVJgn62VT/9IZQh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 8 Oct 2023 23:39:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Florent Revest <revest@chromium.org>
Cc: linux-man@vger.kernel.org, joey.gouly@arm.com,
	akpm@linux-foundation.org, keescook@chromium.org,
	catalin.marinas@arm.com
Subject: Re: [PATCH] prctl.2: Document PR_SET_MDWE and PR_GET_MDWE

Hi Florent,

On Tue, Oct 03, 2023 at 05:50:10PM +0200, Florent Revest wrote:
> Memory-Deny-Write-Execute is a W^X process control originally introduced
> by Joey Gouly. I'm the author of the PR_MDWE_NO_INHERIT flag.
>=20
> Signed-off-by: Florent Revest <revest@chromium.org>
> ---
>  man2/prctl.2 | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>=20
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index d845b0905..67e6e2ff0 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -2041,6 +2041,33 @@ the copy will be truncated.
>  Return (as the function result)
>  the full length of the auxiliary vector.
>  \fIarg4\fP and \fIarg5\fP must be 0.
> +.TP
> +.BR PR_SET_MDWE " (since Linux 6.3)"
> +.\" commit b507808ebce23561d4ff8c2aa1fb949fe402bc61
> +Set the process' Memory-Deny-Write-Execute protection mask.
> +.IR arg2
> +must be a bitmask of:
> +.RS
> +.\"
> +.TP
> +.B PR_MDWE_REFUSE_EXEC_GAIN
> +New memory mapping protections can't be writable and executable. Non-exe=
cutable

Please use semantic newlines.

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.

Thanks,
Alex

> +mappings can't become executable.
> +.TP
> +.B PR_MDWE_NO_INHERIT " (since Linux 6.6)"
> +.\" commit 2a87e5520554034e8c423479740f95bea4a086a0
> +Do not propagate MDWE protection to child processes on
> +.BR fork (2).
> +.TP
> +Once protection bits are set, they can not be changed.
> +.RE
> +.TP
> +.BR PR_GET_MDWE " (since Linux 6.3)"
> +.\" commit b507808ebce23561d4ff8c2aa1fb949fe402bc61
> +Return (as the function result) the Memory-Deny-Write-Execute protection=
 mask.
> +(See
> +.B PR_SET_MDWE
> +for information on the protection mask bits.)
>  .SH RETURN VALUE
>  On success,
>  .BR PR_CAP_AMBIENT + PR_CAP_AMBIENT_IS_SET ,
> --=20
> 2.42.0.582.g8ccd20d70d-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--YxVJgn62VT/9IZQh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUjIXcACgkQnowa+77/
2zLNzQ/8C3CrbBBvgM0woZ+gtLp1fNGe/PMbleBT/pxSMSvq0wvUgI3qBWRy5E+z
f2L6vZriRZqNYvP/KfARu1NRMPPj951KQuEkWEl+rAK7vpFwy0MaHW5taoRe5mNW
Ta4PGfEbJdGBDzkYgQaGutn4eQy0amN8ktJDYRgpuRcHecp0nj8C5TS0kh72gV89
9V02cjCijT5vEkldGFDgF8ZqtfPAAURm/oWLL0AbQO43YaMt8baYQTglL72Lw6cg
75QjrU4RpdzTuXo2V35crb7DPZXSOdg2hjZh9iqx2v0U9q0DKTwfakU3aopbaW1W
nxYgHNnpIQSUZ/hnlLno0mmyg2YSBTemsa124p3bo9iA0S/fwnJJHMW5YNdd0JCo
rJD29abavIqefsd6W9SPCbYj7xUhSGGSX6vdsuAAaREw2L/jPfQZGQ9c2mWVAmSd
hMCzJu8rC1H2278ZuK/0xiH8jEbLGopOVRgEur9H476B5vHAS1mT75cz2wSt2NtT
j7P/g1TuFQkkcro2gioDJgK30GhkZXyOBf/l+RUt4LiogkTrkqm+gVdXEQp5VQx+
6leZsA3Z7YDZOzS/+PcG++/okTxxqhu6fFBB3/a7yr5eyj74zjzNa92truL9FIFJ
IGADpdnzGphCQ5/ZL0XvSHQP7fZ6uIwuqdxG5Ac+xfGuKbELtpg=
=6U0b
-----END PGP SIGNATURE-----

--YxVJgn62VT/9IZQh--
