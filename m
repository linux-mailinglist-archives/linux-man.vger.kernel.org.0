Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EA997D6F7E
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 16:43:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344661AbjJYOaj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Oct 2023 10:30:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232846AbjJYOah (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Oct 2023 10:30:37 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E15A18A
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 07:30:35 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F435C433D9;
        Wed, 25 Oct 2023 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698244234;
        bh=on9DDne8XnDRO5Oze+LZ9PCoy6rW44aal41lqAsKtZQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CpXfcqEcN/IQn6G+aFGhywvPsUNjDJQHHOn28NFCHZyAdf2uMKRp98aLm+QZGsVlw
         JEbBkY0dvOstHlmm5DGA+jmygZ3YjqRHMJXazK5KQNH96GZi2vrzJIycoBn6EKKOWo
         k8V2Lh9nIz7i11H9nM5JOLfQ96fXowp5kbTXUYPShTUq0NmPYSb+6mchqJgj1l+WxQ
         pETij8o+b+bOQ8k4fA7V1b1QeJ5oKz/jFDQBfR9NmENzXHB1/24RP6qkAFojdydjTh
         CWEg11Q0AQ67XTq13kRJm07XV5+6X4nxFEZAezJE3lerVgTaysSgiF2BeI+datd+NR
         TysQNEcQ6/rzw==
Date:   Wed, 25 Oct 2023 16:30:31 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v10 0/1] smartpqi man page updates
Message-ID: <ZTkmh8aUrJ3rCdAn@debian>
References: <20231025142235.82218-1-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="xLqkRDkV0XO+Nzoj"
Content-Disposition: inline
In-Reply-To: <20231025142235.82218-1-don.brace@microchip.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--xLqkRDkV0XO+Nzoj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Oct 2023 16:30:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v10 0/1] smartpqi man page updates

Hi Don,

On Wed, Oct 25, 2023 at 09:22:34AM -0500, Don Brace wrote:
> These patches are based the man page content found in
> git://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
>=20
> The Linux man page smartpqi.4 is out-of-date with the man page provided
> by our out-of-box driver. This patch series brings the Linux man page up
> to date.
>=20
> The changes are:
> smarpqi-update-copyright-and-email-addresses
>     The copyright, email, and URLs have changed to Microchip.
> smartpqi-update-module-parameter-descriptions
>     We changed some descriptions of some of our module parameters.
>     Clarifies what their default values are.
> smartpqi-add-module-parameter_disable_managed_interrupts
>     We added a new module parameter to allow users to disable how
>     interrupts are managed allowing them to change affinity.
> smartpqi-add-module-parameter_ctrl_ready_timeout
>     We added a new module parameter to allow users to change how
>     long the driver waits for the controller becomes ready. The
>     default is 180 seconds and can be changed from 30-1800 seconds.
>     The longer wait times are useful for large configurations.
> smartpqi-update_FILES_section
>     Minor change to the FILES section. The word "Logical" was changed to
>     "Disk" since HBA disks are also supported.
> smartpqi-update-host-attribute-descriptions
>     Updated the descriptions of existing host attributes accessed through
>     sysfs.
> smartpqi-update-device-attribute-descriptions
>     Updated the descriptions of existing device attributes accessed throu=
gh
>     sysfs.
> smartpqi-add-host-attributes
>     We added some new host attributes:
>        enable_stream_detection: For RAID5/6 sequential write operations, =
this
>              can help increase IOPS. Reduces Read/Modify/Write operations.
>              This is for AIO capable devices. (Volumes consisting of non-=
rotating
>              media).
>        enable_r5_writes: Send down RAID 5 write operations down the AIO p=
ath.
>        enable_r6_writes: Send down RAID 6 write operations down the AIO p=
ath.
> smartpqi-add-device-attributes
>     We added some new device attributes:
>        lunid - SCSI LUN ID
>        unique_id - 16-byte ID that uniquely identifies the device within =
the controller.
>        path_info - Host:Bus:Target:Lun (h:b:t:l), device type, Active/Ina=
ctive
>        raid_bypass_cnt - Count of the number of request sent down the AIO=
 path.
>        sas_ncq_prio_enable - Enables SATA NCQ priority support.
> smartpqi-add-sg-entry-to-see_also
>     Simple addition of the sg(4) driver to the SEE ALSO section.
>=20
> Changes since V9:
>=20
>     Only 1 patch remaining.
>=20
>     smartpqi-remove-sysfs-entry-for-version
>       Added the kernel patch that changed the sysfs entry for "version"
>       into two entries "driver_version" and "firmware_version" and the
>       date this patch went into Linus's tree.
>=20
>       Alejandro Colomar <alx@kernel.org>
>       Link: https://lore.kernel.org/linux-man/ZThOy783p2lCDQcF@debian/
>=20
>       Thanks Alejandro for your work in getting these patches applied.

Thank you for your patience!  :)

Patch set fully applied.  You can find it here:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dcae9da3fbbac173fb094acf4cfc027739d1caf9a>

Cheers,
Alex

>=20
> Changes since V8:
>     smartpqi-update-host-attribute-descriptions
>       I added an explanation for changing "logical drives" to "logical vo=
lumes".
>       Alejandro Colomar <alx@kernel.org>
>       Link: https://lore.kernel.org/linux-man/ZS3IKF9XHOuQaMMt@debian/
>=20
>     smartpqi-add-device-attributes
>       Changed the sysfs entry from a specific Host:Bus:Target:Lun to gene=
ric
>       c : b : t : l
>       Shortened some lines.
>       Alejandro Colomar <alx@kernel.org>
>       Link: https://lore.kernel.org/linux-man/ZS3MwU7MNF3p7yes@debian/
>=20
> Changes since V7:
>=20
>     smartpqi-update-host-attribute-descriptions
>       I had removed some patch context, but did not update the patch
>       description to reflect the updated patch.
>       Alejandro Colomar <alx@kernel.org>
>       Link: https://marc.info/?l=3Dlinux-man&m=3D169732291731554&w=3D2
>     smartpqi: add device attributes
>       Changed the sysfs path entry for each device attribute from ".I" to=
 ".IR".
>       Alejandro Colomar <alx@kernel.org>
>       Link: https://marc.info/?l=3Dlinux-man&m=3D169732400031940&w=3D2
>=20
>     Thanks Alejandro for your review and suggestions.
>=20
> Changes since V6:
>     patch "(smartpqi-add-module-parameter_ctrl_ready_timeout)" was
>     applied.
>     patch "(smartpqi-update_FILES_section)" was applied.
>     Some minor updates requested by Alejandro Colomar <alx@kernel.org>
>     Thanks Alejandro for your review and suggestions.
>=20
>     The V7 updates include the following patches:
>=20
>     smartpqi-update-host-attribute-descriptions
>       Moved the sysfs entry removal description for "version"
>     smartpqi-remove-sysfs-entry-for-version
>       New patch for removal of sysfs entry for "version".
>       Added HISTORY section.
>       Alejandro Colomar <alx@kernel.org>
>       Link: https://marc.info/?l=3Dlinux-man&m=3D169680471921234&w=3D2
>=20
> Changes since V5:
>     smartpqi: add module parameter ctrl_ready_timeout
>       Forgot to change the range of values for ctrl_ready_timeout.
>       Changed 0 or 30,1800 to 0 or [30,1800]
>       Alejandro Colomar <alx@kernel.org>
>       Link: https://lore.kernel.org/linux-man/ZRtfS8DIxlqNN-XH@debian/
>       Sorry about that. Thanks for your review.
>=20
> Changes since V4:
>     Added patch smartpqi-add-HISTORY-section
>       Added HISTORY section to explain that the sysfs entry for 'version'
>       was replaced by two new sysfs entries: driver_version, and firmware=
_version.
>       Suggested-by: Alejandro Colomar <alx@kernel.org>
>       Link: https://lore.kernel.org/linux-man/ZRtgG396-1Cj4gn2@debian/
>=20
>     smartpqi: add module parameter ctrl_ready_timeout
>       Minor update to parameter description due to suggestion by:
>       Alejandro Colomar <alx@kernel.org>
>       Link: https://lore.kernel.org/linux-man/ZRtfS8DIxlqNN-XH@debian/
>=20
> Changes since V3:
>     Updated content for the following pages due to reviews by:
>     Alejandro Colomar <alx@kernel.org>
>=20
>       smartpqi: add module parameter ctrl_ready_timeout
>       Link: https://lore.kernel.org/linux-man/axwssorupkp6fv3b7zqgjyd243e=
xvhlw7rle2ftyy43jxhm4yf@woxzbz4hm766/
>=20
>       smartpqi: update FILES section
>       Link: https://lore.kernel.org/linux-man/fwpvmbussvf2zzug5bsqhrd7mvw=
cvdllvna6a4ngke3hw6w5am@b4icgpgirck4/
>=20
>       smartpqi: update host attribute descriptions
>       Link: https://lore.kernel.org/linux-man/ss7k5ooeoi7y56j6otvdpwhgd5y=
ltzk6nt5l6ujiiupxzpmrdx@zrcvhw364ejx/
>=20
>       smartpqi: add host attributes
>       Link: https://lore.kernel.org/linux-man/nbt3jt7busx6akj7ykaxs7df6vl=
bbxtvcdy4ckvlp7saol3djl@rb6ckz3lzzot/
>=20
>       smartpqi: add device attributes
>       Link: https://lore.kernel.org/linux-man/ytcsqleu53iwpn5gsjmmuoqz2cy=
5oegvvafwlwxn422bcn3a5e@ne3khvixxzuq/
>=20
>     The other patches have already been applied and were removed from the
>     remaining patch set after a rebase.
>=20
>     Thanks for your attention and reviews for these patches.
>=20
> Changes since V2:
>     Resending due to bad e-mail address for maintainer.
>=20
> Changes since V1:
>     Broke up the large patch into multiple smaller patches due to review =
by:
>     Alejandro Colomar <alx@kernel.org>
>     Link: https://lore.kernel.org/all/096ed4d5-945f-5ac9-eba3-c9be5d32cfe=
8@kernel.org/
>=20
> ---
>=20
> Don Brace (1):
>   smartpqi: remove sysfs entry for version
>=20
>  man4/smartpqi.4 | 25 +++++++------------------
>  1 file changed, 7 insertions(+), 18 deletions(-)
>=20
> --=20
> 2.42.0.482.g2e8e77cbac
>=20

--=20
<https://www.alejandro-colomar.es/>

--xLqkRDkV0XO+Nzoj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU5JocACgkQnowa+77/
2zK5gg/8CFV7FHj4E3z4a1halF5QQ0zC5uysAo0LL+CrpH1bP2sMFhVCngYV/CFq
ypwqvNAOVWPob0cv60qk+UvExWIOPdT8bz1qUIpbW3DJX9xBrv3Jj7/n7cQ47tSW
ehKLeWK95lezsFoQDULM+hp2N/vkDwCX47Ap0CcVK0Pj3KoEwGYTJQAZGxvvpqEP
JJFyL7iUS1zhjnvs1bJqbJ3EmsCsUrtwKGbDVE5ujKWqQsl7NqQflIjWWwxh4LAh
JkwDA9PiBY4GOwQZoV8lMynA9L8t9QcC9LScgdsih+J2bZNbFIod1NrxvN1nfvgX
2ubbRDcJ6ksh3LVYde1Rq9v/Fu6kIbQwNRkwGh3BI/4fmh8KIeinvaSlDcH4CvCV
Bo86DeQRpPqWCOMrB9T/7JI5a2cBMr8MwBt+0azKEU3ckaWDYWHvvgLuu4GGkZQC
5y41C19hJd/+Qtgx49gNqMuA8vNpdvKKFy9mc7dsvTyWs50NbRe+4WLUM1+Cbqrt
k1u09Tw6ut/MKEQIlvp7NHQ2/iq50UhX4GAyKCXBzMjcdGLeB7DTvoGIUlO/jSN3
yvpdC4o29RJ8sycvVFNMwEGUK8bJzvt2PHhvSuEsTM6IcUbPolISD9b5WDU9p5bA
5nNBkOCRC45dQxAUIBDvedY8H7N4nUdU9nfuq3r2LZsut8eZu3c=
=P+HX
-----END PGP SIGNATURE-----

--xLqkRDkV0XO+Nzoj--
