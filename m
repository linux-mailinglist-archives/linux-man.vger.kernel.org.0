Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 221355BBE8C
	for <lists+linux-man@lfdr.de>; Sun, 18 Sep 2022 16:59:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229514AbiIRO7v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Sep 2022 10:59:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbiIRO7t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Sep 2022 10:59:49 -0400
X-Greylist: delayed 448 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 18 Sep 2022 07:59:46 PDT
Received: from kiste.informatik.uni-erlangen.de (kiste.informatik.uni-erlangen.de [131.188.40.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DC41EE1E
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 07:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sicherha.de; h=
 content-type:content-type:mime-version:references:in-reply-to
 :message-id:date:date:subject:subject:from:from; s=dkim20200822;
 t=1663512730; x=1664376731; bh=JJxQHTa3Aqp/dgwvdBehePejr1Xotzxn
 CUhMpFZXndY=; b=ohoPKnDj1wz4G3dz4A9j9/rFMC54/hORy785m5Hw5rLbHd9A
 87F4XTuOURCDwJF/rrZHd4tFkSdFhnOA7JxUusKsNWlXiVJa8u40l5QvMuDNSING
 JC7dfrXZhW/SsEXz4xYw+hwnFJrp+uJf0/rSoMKuJ9owC/x4uNQsvXZfyDJOda2E
 RSfTj4/TjbtbLVnYKNeNHImJqEI/AxFDMWgG8fDSYNPUU1oOpJtjJ4AkDEH3OtTZ
 JHsYykqzZ5sd3yYLUt7oC5yz2ONgj76wemSRl0SDPQxwwAEyvFebJZjlu0PQoQHf
 PELL5POzU/e1ivWbxEENY4pqd4ugzXWbvlp05b5bFE3aEBShVVIuQWb/X9Gsr+LM
 Qx9uEBGnYBFyJc1vmm20QxSF+/uZWitH/dQ6AY9dhghUIfLwhYDKxSNX2l4/JX+w
 aYWx5zHpmdRdIgChLH7JX0+azyiOk6DeVNV6lsL5S0E11XnshEXG8883uOeVqBiu
 dYmT9yO4MTXQsPNCAh0iI4I0OgHQ7J/iFJwa+bo5DRhb4NnEw5xRgo5rfSypiGzZ
 +XEj/qY4T2/d0sKLdqyeUpkY0OjN3ws46H4NUSD2wIoil6Sel/IVEkpxETTp7pma
 C/fQ4Iykl2DyVOw+8cZL2D3M7abaufXj6WJ9Nl91k4RB2xgX9PEI6hwRzWE=
X-Virus-Scanned: Debian amavisd-new at sicherha.de
Sender: christoph.erhardt@sicherha.de
From:   Christoph Erhardt <christoph.erhardt@sicherha.de>
To:     linux-man@vger.kernel.org
Subject: Re: Is man-pages-posix redistributable?
Date:   Sun, 18 Sep 2022 16:51:45 +0200
Message-ID: <13285139.O9o76ZdvQC@delle>
In-Reply-To: <3765026.aeNJFYEL58@delle>
References: <3765026.aeNJFYEL58@delle>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6831752.DvuYhMxLoT";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart6831752.DvuYhMxLoT
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Christoph Erhardt <christoph.erhardt@sicherha.de>
To: linux-man@vger.kernel.org
Subject: Re: Is man-pages-posix redistributable?
Date: Sun, 18 Sep 2022 16:51:45 +0200
Message-ID: <13285139.O9o76ZdvQC@delle>
In-Reply-To: <3765026.aeNJFYEL58@delle>
References: <3765026.aeNJFYEL58@delle>
MIME-Version: 1.0

Hi all,

who would be capable of answering that question?

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


--nextPart6831752.DvuYhMxLoT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEwp5/nkNlccrQ2UKH4yzDBS9Gs8IFAmMnMIEACgkQ4yzDBS9G
s8Kb6hAAjtaVXKWxpdKiiUqEDgY0hlqPEoh8gEEbkQbuBYKeSR87r/NMBChkNM5w
k5l570C5OWrerJn4a59kADYa+jWWc6F4m+vnhhYuvRBeGeP3rS3tKYmM8s+wC4x3
sjVl+BkzwidXK79+qB1H9TeBxZDmp89KkZxfMSJmfzVn6IwBAzWGgLEvoM+RbRI2
CdSBQJ3SOB0dnbhAmNgdtJPQV2y/h1V4NeZjsMPFrwI7KFWjWi+m3BkR0k4Xyube
XkfGg3IC58vzVbHSIhKC69nhMrXq9dRqNyjLpxM6mkTPHqDQbLi0cexlR3oCixNA
LjfY4SOGJEq0YoiI+PGbb3y8qSI/MH6TwScmEQu4a7y/kK6jGYip0S5w+9Q6T8a3
qgx2xD1QO3dZ3zLhggeHrt8icHNMebqWjt1uYl+nzKBNrmZHd8KY02KoRQB8G6Iy
c1KQUHEriPZQ9ozUag5gWdkcM4mQl2cftCeuf0wkdGGobdWjzcY68XMnY33Z8247
879uNb5RUb3x5njRqTjFh8fSkLshlW03WAr7/CPaqEM+PXJdfoVU5HD/m0UsFjMC
s43BD/24YfdCGjY0LtBex3xb58W0321M1xskn3Sit36TgmZD+eVwV7iqjsbrtm5g
Gr3v/r728fZZMX5XZALrumPwoL49MhYlOXDS8iRkuafp1YTv1ns=
=1l8T
-----END PGP SIGNATURE-----

--nextPart6831752.DvuYhMxLoT--


