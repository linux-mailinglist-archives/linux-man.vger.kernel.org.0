Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56A817CC904
	for <lists+linux-man@lfdr.de>; Tue, 17 Oct 2023 18:42:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343745AbjJQQl7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Oct 2023 12:41:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343781AbjJQQl6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Oct 2023 12:41:58 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 935BB94
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 09:41:57 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6954DC433C8;
        Tue, 17 Oct 2023 16:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697560917;
        bh=zTZkysRBfLyOm5tzMNrY/s0WpA72t+NqrX4EdrE6hOo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qU9UQBJVpUJMVi3Wd53Roc4zY//3uTy59T/unCjQL1e98VGixibKvxSvm7q1FhP08
         ED+F4WrRAzlZNYd5/2ISPCRqVWNxmhsfaZb+eT5DDsjKe23AcMBAe3MKxTbC8LsvFf
         cRls0vusgkhvayW73LGD9r8vkvB7v5GE298BClOqx8ne5qOncRUgFOrZxamJNfl3a/
         13ZE1WO5JP74ko9ZoKhtbCWq6WoXRJr9DDMSU7P6t+kQZFpWbpBKrLo9BhsPWrtb+k
         qbJ8d+0CRZFPlPu/t2J8echvdByZGZoZrc2vHSPXmH9ZolWDOiANRXDnDqk/LVHHd0
         Pemzq2BHIGuDA==
Date:   Tue, 17 Oct 2023 18:41:53 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc:     kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC
Message-ID: <ZS65UouGx3_wm0Go@debian>
References: <20231017150138.3406580-1-usama.anjum@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="5thIgCflHvsaMfif"
Content-Disposition: inline
In-Reply-To: <20231017150138.3406580-1-usama.anjum@collabora.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--5thIgCflHvsaMfif
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Oct 2023 18:41:53 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc: kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC

Hi Muhammad,

On Tue, Oct 17, 2023 at 08:01:31PM +0500, Muhammad Usama Anjum wrote:
> Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
> ---
>  man2/ioctl_userfaultfd.2 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> index e68085262..cdf90882a 100644
> --- a/man2/ioctl_userfaultfd.2
> +++ b/man2/ioctl_userfaultfd.2
> @@ -244,6 +244,11 @@ If this feature bit is set,
>  the kernel supports resolving faults with the
>  .B UFFDIO_POISON
>  ioctl.
> +.TP
> +.BR UFFD_FEATURE_WP_ASYNC " (since Linux 6.7)"
> +If this feature bit is set,
> +the write protection faults would be asynchronously resolved by the

Please use semantic newlines.  See man-pages(7):

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

> +kernel.
>  .PP
>  The returned
>  .I ioctls
> --=20
> 2.40.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--5thIgCflHvsaMfif
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUuuVEACgkQnowa+77/
2zKm1BAAgNN0cSTdKrqqyylJ8FFEjy9mvOAwuz5tZcnqIipigO78BL5UWgUEZwiw
g0JKrnqJtAg7mUBnmPUg7js558CZZyrIaMffC/fO/Qoi03+VujFLCEECYnARQgjk
7GKSpnYVKTdmnhwvxj8JJwlWSnYTkEG3Cqt2IniR474XDZT2JRHuqQZ+8vdf+Tp3
ul9W3pW+0y4J3l/QXHnAavyOu7Eldr1l2/08rhy20QfL/CXawEj074GNjuW2xqHn
B/TZm6C5OSDPLAAghklo0QlO1cDvT57/5391Zmad+ibppkaa3RTE6aTp3HZMvRyN
WDE36sTrZc0MS2ulPy584+eY/2MhE77i9AF3ygISqi9GFBPLJGecs8+6TKWVl313
3HVdvfGC6CQNF/sENHt6kPlhKIFvpu0OjXSfl1AaiMODyvbSp51WMYpxqz7ejvGw
X16bFh93g/prg8PnAM4PO5NHOz7q+DCLQYWPi4VcLxN/1Kw3lsZ3FD/P9FE+ds18
NL6QlBa8BXNYD+wi9drSnmROs9wuBZfaXQq8EkbbdgsiN8VJruAuGcQKRhOVRpCd
esnvZcH3UScGSkuLoSfe3Bkibvh18FQnMIzMuG/4XP5d9iEagAqvyE0d6lI22cy0
ERfv/egu1qxgQ1ic/BgwSmjh1FQQblvTXscoDlQkmc0rIFe0kmA=
=OVEp
-----END PGP SIGNATURE-----

--5thIgCflHvsaMfif--
