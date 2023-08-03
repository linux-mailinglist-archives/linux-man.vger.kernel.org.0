Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 878E476DD68
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 03:44:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbjHCBoP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Aug 2023 21:44:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbjHCBoN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Aug 2023 21:44:13 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1449C115
        for <linux-man@vger.kernel.org>; Wed,  2 Aug 2023 18:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1691027047;
        bh=l7TQ9l2aXcUo7bD6nGyQAkiV/CZSLwjk9B05NgY/XpQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=URVAsqgNTIEuvG8xovbfv3TbQybZn24bPx6pmM9JDxGx1fOSI/7FyIhIK1cAM6xqx
         NEA6s+tQrpJ0ZQv2A/DQUCdvT5cVWtgr2g/s4Hh6kVI5/D+YCCtCaovxUI1cXBFYcS
         Hafi02jHoO7YtjsNu7NF+eh6t4mnoRqYdG9Z/qaHblbNs42pT8/JbSe9TxbjFqP1+b
         frgDzpNJk+EdWAFuzx1o5L0Vx6ihc3uyvCWxtfTFOmQjdFMzSky23DCPNo0e9sJK2s
         kjZRt2VDe3BrHhI1f9p7uffnPOeiYJvBcsubHkTk6Ot705hNfpiRylzG/AVCSDRtQz
         EU+DHhfSRhngg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 03EE45018;
        Thu,  3 Aug 2023 03:44:07 +0200 (CEST)
Date:   Thu, 3 Aug 2023 03:44:05 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: Copyright for erofs.5
Message-ID: <ups5demx3inur4cudbh44smelpfmsuc2j7alegk2jjcavoyhnd@4rkmms4ugjcf>
References: <13248286-9e34-ceca-8e37-2166a9d39c8d@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="bqf47ra2fuktnwc3"
Content-Disposition: inline
In-Reply-To: <13248286-9e34-ceca-8e37-2166a9d39c8d@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bqf47ra2fuktnwc3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 03, 2023 at 02:06:08AM +0200, Alejandro Colomar wrote:
> I'm packaging manpages 6.05.01 for Debian, and while updating the
> d/copyright file, I noticed some glitch.  You attributed erofs.5 to
> mtk.
I copied it from another file (probably tmpfs.5) then edited it,
so I left the header as-is.

> I guess that was a copy&paste error, isn't it?
Above my pay-grade to categorise this,
or to touch the header on a file I copied.

Best,

--bqf47ra2fuktnwc3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmTLBmMACgkQvP0LAY0m
WPHnhhAAr05xfpsDu5SfQ1s109MOQfv7O7x19Wa3iI5Gmmh/N2japwLhCkgpRKJj
yASMdp8yWLYGx8CKEvMG8A6cjT9TWS5uoqIBBM0rPXcUcFmJPLTkUvf71PeTjA2U
mUvR3hFf7DDjs8pyI+Tv9J5CyJoTGUJ6vEwJj+r41B9LJMBgoZq6iQuk/sF5AC/N
r64C7wkskf7ya7xdzl3RQPhmXTCZQk0tF4KJVtmfQUHWU56HoEOauDlEn87/TINn
iW7iCqmYj2egnwZv+5TqW16gOeTu6dvMoAfIjcPJDpCbFN5+wzcl/WNFX06Yl9Vb
9/gixB7k/3W7rrQS+ZYAZJCpaHxPR2aqn27gcYE2q7IskRpC4p60PWeqdRQ/eck0
to6Nh4hiVCcGqJ3AV0uhe/2U22/ftEf9zl331tUVktrsmQDQdDDXmzKtfY3+Xma+
OtLmDJmYXzQ6IYCaua8NhTypoIlv/ngkorXr3bcZJAmpVCx/tSS20kS/22Puj6Hh
6eEM/q+6wl9x/2eH/E5PrBN9GnbrMrAbbKzbDlVNMWH7DBCfuTkls6PSdAQZ72NE
bGiRslu//jtBSxodm9iscEYa8c+pmWVhk6pLeEIsHDr+S/5ed2R57IciUo4H+JM+
k5IZznP7jIuds/0qe6ZpMAtR8ZWkQy90uvXIyIiRAFWoZb3upKE=
=JKKK
-----END PGP SIGNATURE-----

--bqf47ra2fuktnwc3--
