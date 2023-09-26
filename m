Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA3A37AE2DC
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 02:18:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbjIZASe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Sep 2023 20:18:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbjIZASe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Sep 2023 20:18:34 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6BDB10A
        for <linux-man@vger.kernel.org>; Mon, 25 Sep 2023 17:18:27 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31149C433C7;
        Tue, 26 Sep 2023 00:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695687507;
        bh=97RpzmsErTO7oNKzAM+pDCzedi8YRJx1m+/7c0rKEAY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=d+dhq1PTWfySATXOOZLH/RlLGV8fnodgNcaCY6V2jCGMbR+TXHDWBPz50qvntTCXP
         12vqjWseXJ4IK/g858vvfKKgmydX/7U8iGWUlEGp5rIQSMkAnxYFrTwc0B9z/cxvmL
         5FW1rfNdujDt7Hl1bXdD8JzvILvN/MiSXApmK9IxVu/Xp02MmmEj+n9dCAKQYr1IP7
         VX6O7l1TqQhiCKq1Vzd1FjyLmuz0qixLURMXA+Uyzj1uz2Z6nVBzOeYMfhCPt64HY0
         Of0HpkWPeyo7fJI1UCfCwt584HpOo01Mzmpiz0aToGwJMSrIN6YUOECaNwVdL7vEAw
         etxOI9JSNsD0A==
Date:   Tue, 26 Sep 2023 02:18:23 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: [PATCH] difftime.3: be more explict about "difference".
Message-ID: <xy2hn5d4d3mgofo2aj6makhkhqv6aoeofmuhtebi6v6cwoub3n@t3ybtntqtvgq>
References: <CAJgzZoqty5f=ivODLB6pvZpm4bZWAt83ET5jpMwrEb9oVqS6MQ@mail.gmail.com>
 <fa623e75-e5bf-b32d-8ce8-27ed59ae03d7@cs.ucla.edu>
 <CAJgzZorrrPLSJ-EWrsGcXg9y-ipVsX9FjHtdeh1x15yY7c-eHw@mail.gmail.com>
 <e06035f7-145a-13cd-554c-ca65a3d8f98a@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cuvmuvrbizz3tmpm"
Content-Disposition: inline
In-Reply-To: <e06035f7-145a-13cd-554c-ca65a3d8f98a@cs.ucla.edu>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cuvmuvrbizz3tmpm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] difftime.3: be more explict about "difference".
MIME-Version: 1.0

Hi Paul,

On Wed, Sep 20, 2023 at 01:10:59PM -0700, Paul Eggert wrote:
> On 2023-09-20 07:13, enh wrote:
> > that's why i added you --- to suggest better wording =F0=9F=A4=A3
>=20
> I noodled around a bit. There are several mistakes about timestamps in the
> man pages. difftime, for example, copies the C standard's "calendar time"
> wording but in Linux it's just a seconds count and need not have anything=
 to
> do with 1970 or any other calendar. And there are lots of other howlers
> about leap seconds and 2038, improperly parenthesized macros, unclear
> wording like "incremental adjustments", out-of-date references, etc.
>=20
> Attached is a proposed patch to fix the problems I found before I ran out=
 of
> time. I haven't checked formatting. I'm sure it could be improved further.

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

E.g., in here:

+and by frequency adjustments performed by NTP and similar
+applications via

or

+near a leap second it is typically adjusted by NTP to stay roughly in
+sync with UTC.

and definitely here:

+range.  This can happen if an executable with 32-bit


Thanks,
Alex

--cuvmuvrbizz3tmpm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUSI08ACgkQnowa+77/
2zJ4ow/+NxGoNhroqLPE1hOyTbto0aBneM7ZA8x2jw6HPmFhcFdO90iyM9gPmFJB
HBZc2mYHuO5nzZIVSAxF+xSXnAsiueja2HCq63td3OYtNKAnoWV0DnUUZ/3pw2Jq
lWlMtTFRTk9Bwv6Hz7ZCugCoBzG6UdFPnqjSKRKWpm/f3jptaHiIstqYROMWyUVG
q05ET1V6Xkor1eqUrfPWUdvVIGmH5uc5QJDGKQzLR5Gqa8zSbsaQfvIqms/808ov
HwOQ1U0bmCA/KuCGLLp6fwUQQA2jHkzb5cNeHsGuH5hvYZtSz6/n+pSGjG0fuBbs
X3wSKO9pBv2Iu9RFF5uYSH9MLCdLY9PINUbvfLqFhcpfwRYv5ovwgNYaITWu7qSm
iSyktVzo8mEgkBlzrLPXzl61OI96qRBeZjMlGgCnVm7gq9UNnAJSkIqiby7VwsHo
jonTV5mT+yN2R61xxNeu7Kg4ThdRSuujjIRMbnW9c2OpmIvhwenprwT+pj8seKb9
xYaA98hNyDQsT4dlARTGmwVl7Tp3BWdsOSJz7s20N8ZE5cv9OZp6haFKkMJcdfYw
YQ0QRINIQUiJwBRVt7adUDxIITs/7YQk8cZQ/Vcja6AJCnNenxu9uBxfIc9vQHrX
BemAuurIUrEmOgpLIQPkWvCAEFihTIpsbrSXG9kZeIGYGMmn0mA=
=FYIA
-----END PGP SIGNATURE-----

--cuvmuvrbizz3tmpm--
