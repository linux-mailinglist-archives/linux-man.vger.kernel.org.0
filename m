Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98DA15ED777
	for <lists+linux-man@lfdr.de>; Wed, 28 Sep 2022 10:17:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233972AbiI1IRD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Sep 2022 04:17:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230305AbiI1IQ3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Sep 2022 04:16:29 -0400
Received: from kiste.informatik.uni-erlangen.de (kiste.informatik.uni-erlangen.de [131.188.40.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B09207B1E5
        for <linux-man@vger.kernel.org>; Wed, 28 Sep 2022 01:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sicherha.de; h=
 content-type:content-type:mime-version:references:in-reply-to
 :message-id:date:date:subject:subject:from:from; s=dkim20200822;
 t=1664352927; x=1665216928; bh=iUVZzIP1ViJqZ3ecUFsNAoiI29/hzPiW
 n5mWaHRUYgM=; b=rbSKGX6zB0sZ+H7DzY4UAJnzMYjdgdLDsqe5TMWdT5r9IM0w
 AfefCDOjKrbRhDbP/6aNYDZuQSAeTfj9bTNx08Pk5zWkEP8z6PSi9WgKdUHyPltV
 9AZC++DzU+wb7O0fKGd1Fj83MghibJ8fuvcbu5ATSsR2+/buO69IG6as5qlx6cp6
 BPwL+RFCtTQclriHwi1ixKdkPOKdSUW0PFrInJwG5IcG0bJF3MhGbPe4/9oUSQd9
 Tj1aT09bi9Y+yJi1KLbyXBOGYlKqPuXnjdvvL4LVSltALQfTEudPKSy+szyDliIg
 0JYzhJpUu3yedDYpPReokmPLjqyS8JQ69WaKJPvdDhuQU/sv0a7TaPNgSZZM3a+s
 iGhXe0f9qHvJ/xZ896nVcGxRDRJpfmeWdtZkMuXNqDLrmz6BMvE5mYxkn+6nDlSw
 weKElcGjssqXRppOknIRQ1S0AJIFD8OjuSE53SySejoBzikxznpqq46Wl4ryFXjl
 TqRvG4oUWZ51wThAlwu9nsfGRwvh8pk83IlV6Bs96qg6qD10SkkNS5oAIzwirS2J
 DC7bEjLeM3T8GxRxkA7/JwkpLhqA9cBBbSiMgoEycxuwqQ+Xd6hq526Krl5RX2IJ
 plvGHotIi7gIfHqlI+LdDzJNZ1ci0laqiWGPGHakmeGVTywpNVyEfgBF62w=
X-Virus-Scanned: Debian amavisd-new at sicherha.de
Sender: christoph.erhardt@sicherha.de
From:   Christoph Erhardt <fedora@sicherha.de>
To:     linux-man@vger.kernel.org
Subject: Re: Is man-pages-posix redistributable?
Date:   Wed, 28 Sep 2022 10:15:19 +0200
Message-ID: <22845672.EfDdHjke4D@delle>
In-Reply-To: <3765026.aeNJFYEL58@delle>
References: <3765026.aeNJFYEL58@delle>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart8660846.EvYhyI6sBW";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart8660846.EvYhyI6sBW
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Christoph Erhardt <fedora@sicherha.de>
To: linux-man@vger.kernel.org
Subject: Re: Is man-pages-posix redistributable?
Date: Wed, 28 Sep 2022 10:15:19 +0200
Message-ID: <22845672.EfDdHjke4D@delle>
In-Reply-To: <3765026.aeNJFYEL58@delle>
References: <3765026.aeNJFYEL58@delle>
MIME-Version: 1.0

Anyone?

My preferred answer would be 'your question is stupid; *of course* man-pages-
posix is redistributable'. So if that is indeed the case, please don't 
hesitate to say so. ;-)

Thanks,
Christoph

On Monday, 29 August 2022 08:14:22 CEST Christoph Erhardt wrote:
> Hi list,
> 
> I have a question regarding the redistribution of man-pages-posix.
> Prior to the 2017-a release, the POSIX_COPYRIGHT file contained the
> following
> paragraph:
> > Redistribution of this material is permitted so long as this notice and
> > the corresponding notices within each POSIX manual page are retained on
> > any distribution, and the nroff source is included. Modifications to
> > the text are permitted so long as any conflicts with the standard
> > are clearly marked as such in the text.
> 
> In the 2017-a release, that paragraph has disappeared. I would like to
> clarify the implications of that for downstream distributions.
> 
> The Fedora project, which is known to be very strict about licensing
> concerns, sees the new licence as impermissible and has dropped the POSIX
> man pages as a consequence:
> https://bugzilla.redhat.com/show_bug.cgi?id=2116859
> 
> Now, Fedora's quasi-official way of dealing with such licensing issues would
> be to add the item in question to RPM Fusion's 'nonfree' package
> repository. I have opened an inclusion request:
> https://bugzilla.rpmfusion.org/show_bug.cgi?id=6396
> 
> However, the discussion there has raised the question whether the contents
> of man-pages-posix are redistributable *at all* - given that the clause
> mentioning redistribution has vanished from the licence.
> 
> Could someone please clarify?
> 
> Thanks a lot,
> Christoph


--nextPart8660846.EvYhyI6sBW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEwp5/nkNlccrQ2UKH4yzDBS9Gs8IFAmM0ApcACgkQ4yzDBS9G
s8JEsg/9HxAFtZJLj4WKcqoBrUmDX7nt3iG8y6qBWS7uOqHBSgm6khJgwSiqgtkd
JGOQ2CFxztWz2nKw3yGg+EBom9sQP1938xH48MakDIc2kr8eXKeM+EF6nfnGCGb+
ZagPx44dMVw4pBcO9u+ptvM5+0FLo4lJ4q8/FwMT1rkcVSbm5YmY1tCecuRBdHL2
EB7dNbntSdqev/NZV0r3L+lqbutDbqlUT9vr9iWN5/7en+3QSv7uMXG77poVzk5l
GpoAzDqwbjI+dFHVCmDztOWJHDUbUmmHp8FJuD8tE73Afip4dxq7TlFyJZRVv2Gv
J2Eud5dUwqIpsdlliUwVnSOUDV5AWAA9NlkV9W1HP4f+Qrvu1Fq3mTTHZUSQgxxL
j8PwUC5r9u8RnJ/ZOH/ZHe08i/C7O8HYFvqQlBhmhRdOYTQVGucDxavQS2vV+sEe
VvXc9OqHoHwHQ3ct0rumQ8az1rms26bbdXXaHD+Neo19mD0HLPrwvuCvogbpTxbu
snSmdfxP8YW6TmjfmTu4vHqZqu+ZQx01PHPqjSUsUCoh+Wat+1RviYhKbMBooSzr
5CpGf/lDb6NrX3l/EEyNFSmJZeS8xveemyqYzXnQhLv2BypVB6osjw+dgmAEPC/m
aavlsEhQk9HFYK8RwideGDQVQZowgafEYaltfNnL6tP0Hi+jJZs=
=TG94
-----END PGP SIGNATURE-----

--nextPart8660846.EvYhyI6sBW--


