Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B390C7AE2D2
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 02:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbjIZAM5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Sep 2023 20:12:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbjIZAM5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Sep 2023 20:12:57 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32390120
        for <linux-man@vger.kernel.org>; Mon, 25 Sep 2023 17:12:50 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8875C433C7;
        Tue, 26 Sep 2023 00:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695687169;
        bh=ppZFIuApCS8STHf9rfX3LGgJFNuWQ9pPM4KaSMDqRIo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=olJBSDsmjTZrPjD+nCpQSSQ83CGlbZPYyzbJsxmyc4ekZrJH7zzavfsAOOUAY48kI
         +RFjg4sK8bss7ZDJkOeLybgQ/nU0hXbTvOf+I7h8HeZYnYsjpgL4BIrT+qXAygwxgu
         QOoJDNRMDOH9C60XI2kibgigzDS1SYcQtYp8FiJyK2//E959IT0qvlP6YgnKVbQaDJ
         Iva5vxN3PW6T4fSyVYb7ZYfmkkwFuR91ePbWQq2L3maXB9sPDDGcTRBUUrjDfncgyl
         lzjVZyXPupybNVL/A3L3sqQCZnsTJTUrc6VvR6+r9JEgzQtKJNsGsKgAajwBgq/L/X
         X9Lx5OU0YEkRA==
Date:   Tue, 26 Sep 2023 02:12:46 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don.Brace@microchip.com
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2 00/10] smartpqi man page updates
Message-ID: <d22vrkfid2bi5uuoai462lrcvl76kcodjdr73l7wcaypaw4tfh@gzlnd5y42gkr>
References: <20230821195726.446748-1-don.brace@microchip.com>
 <SJ2PR11MB83695FA00A025563EB21F3A5E1F9A@SJ2PR11MB8369.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="76ydopngsxnovkrt"
Content-Disposition: inline
In-Reply-To: <SJ2PR11MB83695FA00A025563EB21F3A5E1F9A@SJ2PR11MB8369.namprd11.prod.outlook.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--76ydopngsxnovkrt
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 00/10] smartpqi man page updates
MIME-Version: 1.0

Hi Don,

On Wed, Sep 20, 2023 at 02:37:04PM +0000, Don.Brace@microchip.com wrote:
> ping

Can you please resend the patch set?  I don't find it in my inbox.

Thanks,
Alex

>=20
>=20
> From:=A0Don Brace <don.brace@microchip.com>
> Sent:=A0Monday, August 21, 2023 2:57 PM
> To:=A0mtk.manpages@gmail.com <mtk.manpages@gmail.com>
> Cc:=A0linux-man@vger.kernel.org <linux-man@vger.kernel.org>
> Subject:=A0[PATCH v2 00/10] smartpqi man page updates
> =A0
> EXTERNAL EMAIL: Do not click links or open attachments unless you know th=
e content is safe
>=20
> These patches are based the man page content found in
> git://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
>=20
> The Linux man page smartpqi.4 is out-of-date with the man page provided
> by our out-of-box driver. This patch series brings the Linux man page up
> to date.
>=20
> The changes are:
> smarpqi-update-copyright-and-email-addresses
> =A0=A0=A0 The copyright, email, and URLs have changed to Microchip.
> smartpqi-update-module-parameter-descriptions
> =A0=A0=A0 We changed some descriptions of some of our module parameters.
> =A0=A0=A0 Clarifies what their default values are.
> smartpqi-add-module-parameter_disable_managed_interrupts
> =A0=A0=A0 We added a new module parameter to allow users to disable how
> =A0=A0=A0 interrupts are managed allowing them to change affinity.
> smartpqi-add-module-parameter_ctrl_ready_timeout
> =A0=A0=A0 We added a new module parameter to allow users to change how
> =A0=A0=A0 long the driver waits for the controller becomes ready. The
> =A0=A0=A0 default is 180 seconds and can be changed from 30-1800 seconds.
> =A0=A0=A0 The longer wait times are useful for large configurations.
> smartpqi-update_FILES_section
> =A0=A0=A0 Minor change to the FILES section. The word "Logical" was chang=
ed to
> =A0=A0=A0 "Disk" since HBA disks are also supported.
> smartpqi-update-host-attribute-descriptions
> =A0=A0=A0 Updated the descriptions of existing host attributes accessed t=
hrough
> =A0=A0=A0 sysfs.
> smartpqi-update-device-attribute-descriptions
> =A0=A0=A0 Updated the descriptions of existing device attributes accessed=
 through
> =A0=A0=A0 sysfs.
> smartpqi-add-host-attributes
> =A0=A0=A0 We added some new host attributes:
> =A0=A0=A0=A0=A0=A0 enable_stream_detection: For RAID5/6 sequential write =
operations, this
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 can help increase IOPS. Reduces Read=
/Modify/Write operations.
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 This is for AIO capable devices. (Vo=
lumes consisting of non-rotating
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 media).
> =A0=A0=A0=A0=A0=A0 enable_r5_writes: Send down RAID 5 write operations do=
wn the AIO path.
> =A0=A0=A0=A0=A0=A0 enable_r6_writes: Send down RAID 6 write operations do=
wn the AIO path.
> smartpqi-add-device-attributes
> =A0=A0=A0 We added some new device attributes:
> =A0=A0=A0=A0=A0=A0 lunid - SCSI LUN ID
> =A0=A0=A0=A0=A0=A0 unique_id - 16-byte ID that uniquely identifies the de=
vice within the controller.
> =A0=A0=A0=A0=A0=A0 path_info - Host:Bus:Target:Lun (h:b:t:l), device type=
, Active/Inactive
> =A0=A0=A0=A0=A0=A0 raid_bypass_cnt - Count of the number of request sent =
down the AIO path.
> =A0=A0=A0=A0=A0=A0 sas_ncq_prio_enable - Enables SATA NCQ priority suppor=
t.
> smartpqi-add-sg-entry-to-see_also
> =A0=A0=A0 Simple addition of the sg(4) driver to the SEE ALSO section.
>=20
> Changes since V1:
> =A0=A0=A0 Broke up the large patch into multiple smaller patches due to r=
eview by:
> =A0=A0=A0 Alejandro Colomar <alx@kernel.org>
> =A0=A0=A0 Link: https://lore.kernel.org/all/096ed4d5-945f-5ac9-eba3-c9be5=
d32cfe8@kernel.org/
>=20
> ---
>=20
> Don Brace (10):
> =A0 smarpqi: update copyright and email addresses
> =A0 smartpqi: update module parameter descriptions
> =A0 smartpqi: add-module parameter disable_managed_interrupts
> =A0 smartpqi: add module parameter ctrl_ready_timeout
> =A0 smartpqi: update FILES section
> =A0 smartpqi: update host attribute descriptions
> =A0 smartpqi: update device attribute descriptions
> =A0 smartpqi: add host attributes
> =A0 smartpqi: add device attributes
> =A0 smartpqi: add sg entry to see_also
>=20
> =A0man4/smartpqi.4 | 229 +++++++++++++++++++++++++++++++++++++++---------
> =A01 file changed, 186 insertions(+), 43 deletions(-)
>=20
> --
> 2.42.0.rc2

--76ydopngsxnovkrt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUSIf4ACgkQnowa+77/
2zKUihAAjuTBIbrH/4yAa3ux3ZehcrWvo1BeLw284Ia4ABMu/w6Ne02MhjwH5T6/
pWfTcZmf0fMpMX0rTm8Jl9Z0knxGASz7RALubcbn2QNWyjnp8b2FCQKEddzQJhRX
S5rreZsQeeAe/olLBdWZD4o6tzTxhwSRrZj1ru/9Xdm736eiiNzwSkIah8juwML+
RK3LyItSV5w37us6ofMCO2xpS1+0rNbFBWoHBAPL4lqT8LAVapMsxyS5ZPMB1lNo
Yh/BeMgPmzyPOQl6CtplRPVEV/TyRCQI5qe/ITYow+N2cXMrgAuBBVLSikYkHZuZ
LwU587yIVBm3vykowjt9N4BDiijaeujFK+XtPGU4s1rmqxfG35UHBr7xLjZ4etTr
lxGCM/Xvcopp1YHOHuMR8S21oMR57rfw17hQlGNKw6q7Dj4RmGSEvmS7qeW0j2Yl
TUWK0rxnVfjcO15kmJH/cIFGeBOnatcaJOrMzG9pJYnVwj7QSbSHXIENSNxujUd4
DzAo+FEjv7rpKlu3nlE7A7dgBTOW/2M/ikCemBkLjsX8ihBTEaaBnIQvXO8hzXKx
0ezEc6A/TOxXqjmNPVoOQBMbCTv/aR0S/BRWNO8CDn4YF9Jxr8HN4NhvMTKyxYrd
vNEgV0NXxCuwjqyrFS18XUamjgs88fAFCbekrOrdBSIJfBkjhZA=
=mOZm
-----END PGP SIGNATURE-----

--76ydopngsxnovkrt--
