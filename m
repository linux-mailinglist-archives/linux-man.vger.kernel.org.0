Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7450A7AE19A
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 00:15:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231915AbjIYWPt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Sep 2023 18:15:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232401AbjIYWPs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Sep 2023 18:15:48 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 688E5BC
        for <linux-man@vger.kernel.org>; Mon, 25 Sep 2023 15:15:42 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6370EC433C7;
        Mon, 25 Sep 2023 22:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695680142;
        bh=aM2psgO6LbsAj5ur0EhX+KhXMb+/3zgB2xkX5wdyajA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YXl1xE7LamkuAiLd03nFuF4uDPrxEghcR+GdMpEgOBgEZRg3LJ8KK+h8DGtLs2d8c
         VdaSi8g3icpgAxVaz6Dn6V0AxIAKQm1BEqRu3dsom8v5/Jvxn7py5WhP+6dZ78cadq
         uSRSptyh/9jqNSwSSUw6OOB6e4jUkbYQZztUGI1Z5MWYEgOwDnOIwZE5AKeKQ5uil3
         vCm0mInNQ3S8wI636bUqRJ3JoojEE23TI6I1HKAJdzvT2+vHSrX8h2EcA9Wzio3eOe
         tp+QGBxMsHNp9p+Qi9JeNngbVix9wjoCFQ2j4R98TSxrENQ4e5suGX+6pUcYLm+QrX
         gKaVhhq4xGA+A==
Date:   Tue, 26 Sep 2023 00:15:39 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "J.H. van de Water" <henri.van.de.water@xs4all.nl>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v2] pipe.7: read(2) returns with zero while the write end
 is closed.
Message-ID: <df5mct3wqtfh63nwcfsqtjwcoet2azb3glakisxowmu2t53y6f@qp3u2ua4dkdq>
References: <20221122153209.10996-1-henri.van.de.water@xs4all.nl>
 <20221122183457.2484-1-henri.van.de.water@xs4all.nl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tmq5sq334o7hxthq"
Content-Disposition: inline
In-Reply-To: <20221122183457.2484-1-henri.van.de.water@xs4all.nl>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tmq5sq334o7hxthq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] pipe.7: read(2) returns with zero while the write end
 is closed.
MIME-Version: 1.0

Hi,

On Tue, Nov 22, 2022 at 07:34:57PM +0100, J.H. van de Water wrote:
> Clarify that read(2) will return with zero if the write of the pipe is cl=
osed
> and the pipe is empty, but will block (in case of blocking read) until da=
ta is
> available, and fail with error EAGAIN (in case of non-blocking read) whil=
e the
> write end of the empty pipe is open and the pipe is empty.

Please use 72 columns only in the commit log.

>=20
> Signed-off-by: J.H. vd Water <henri.van.de.water@xs4all.nl>
> ---
>  man7/pipe.7 | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/man7/pipe.7 b/man7/pipe.7
> index 852cbd94f..4f3074879 100644
> --- a/man7/pipe.7
> +++ b/man7/pipe.7
> @@ -49,9 +49,16 @@ they are created and opened.
>  Once these tasks have been accomplished,
>  I/O on pipes and FIFOs has exactly the same semantics.
>  .PP
> -If a process attempts to read from an empty pipe, then
> +If a process attempts to read from an empty pipe while the write end
> +is open, then

Please use semantic newlines.

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.

>  .BR read (2)
> -will block until data is available.
> +will block (in case of blocking read(2) ), until data is available,

There's a spurious space, and read(2) should be marked up.

> +and fail with error
> +.BR EAGAIN

=2EB not .BR

Thanks,
Alex

> +(in case of non-blocking read(2) ); however, if the write end of the
> +pipe is closed and the pipe is empty, then
> +.BR read (2)
> +will return with zero.
>  If a process attempts to write to a full pipe (see below), then
>  .BR write (2)
>  blocks until sufficient data has been read from the pipe
> --=20
> 2.38.1
>=20

--tmq5sq334o7hxthq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUSBooACgkQnowa+77/
2zJ2ig//b/rzC0ktuS4g53k/X1SMsUV6TiKudq/+pakQY01BFMJnanGLHIMc1rvU
9J9l19lQUliGsFyIJ6Im7D/I4423i5udkA2lF06QxBWuKIKl1PYcV2RVWMtLNjsO
tmkXCHWb4JP54YtW3DrH6Nb8cjiatf4o9Q6rLDA1BzMf/cYXkHrX41s6vvle+RNi
Jogf4sZ+WXJjBkBjpEBUbc0jcJdQmWM5blohIVorr035CjrPc8xQb5afTw05JDAd
hAsl60/b5HqWkwuzyhXS5AQpmAMvLAF0fCI8kTltwzhR6WBP2Mdb9tRz0fHuHp0M
TedRNMcyZfiNXYLSAkozYGXvqVLw00F9pbyu5pv0ZLUruxYkWnOt3J2YjrZydK8l
mLeXNnYKY928hfirKacNxB0CcbEO0h8sDZGg5OQS02TTCHqX5wpFtGxKT2KU2fzD
OW6nSSkoGvlLghQdILfl+YoFOus3RPYqPXCw3H/YpgwhJV8C1vvW2dU6OkslAuYt
ePpQ/k3MgUo+RmFUItTSBMI79uQFzD4lbZcHSJtHwuiNecev2CCwaR9tvkzzo5Wl
Lmk+6CA48kec/Cp1w8bmvLeiSyFZLGxdvDGYVy0xLnzkB5x/u7ZsqZoMKdhc8jqj
UEzvEBNhwcDv8vAReCp3RBLFNy5YDDbORpcASwxvCRReqwY5W9E=
=h8pa
-----END PGP SIGNATURE-----

--tmq5sq334o7hxthq--
