Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74D857D5EA0
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 01:23:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344509AbjJXXXI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 19:23:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344484AbjJXXXH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 19:23:07 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F133D7A
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 16:23:05 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86303C433C7;
        Tue, 24 Oct 2023 23:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698189785;
        bh=10QK8zeM90vgE0PjgClS3gIhTGmQDO5HTkDiE0JE1vo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=V/cPr0kb+i52ZIATcpIS9JjL11gU/om2dQ1Hqaqk9TBe+2Ifs2xNLZ5jOSXTz/TU9
         YUn8Hg+omMDrFgKsYxSE+KB8j0rbvpql2VdwfePyRSmEWcbnTMABZE5T/DfZWtqkUL
         ezDVtnqJEs9k22lj/sWebDWnfEpNO0gbuFX5ajGrtKsbyDbBeVeqiLhP513/QWjiK3
         1RRqpetL8WN0fBPXjut+mIKkWOYTU07tIlWtvERhm2J3H5UxW+LG3TcidBxE81luPd
         vj0mbGcODlRWOqJzKwxCKieKenz3NHd1QNUsRbcSTJ7tEyHYW0odSUsp8Rseh2l9bq
         dh46O3HWFxg7A==
Date:   Wed, 25 Oct 2023 01:23:01 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v9 3/3] smartpqi: add device attributes
Message-ID: <ZThR1pFCih1Zummn@debian>
References: <20231024220153.36748-1-don.brace@microchip.com>
 <20231024220153.36748-4-don.brace@microchip.com>
 <ZThQrK3fMju8xRIP@debian>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="DCDHaoZtuuANtGt8"
Content-Disposition: inline
In-Reply-To: <ZThQrK3fMju8xRIP@debian>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--DCDHaoZtuuANtGt8
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Oct 2023 01:23:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v9 3/3] smartpqi: add device attributes

On Wed, Oct 25, 2023 at 01:18:04AM +0200, Alejandro Colomar wrote:
> Hi Don,
>=20
> > Subject: Re: [PATCH v9 3/3] smartpqi: add device attributes
>=20
> Subject modified to "smartpqi.4: Add device attributes".
>=20
> On Tue, Oct 24, 2023 at 05:01:53PM -0500, Don Brace wrote:
> > Add in some device level sysfs entry descriptions:
> > lunid
> > unique_id
> > path_info
> > raid_bypass_cnt
> > sas_ncq_prio_enable
> >=20
> > These have already been provided by the driver.
> >=20
> > Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> > Reviewed-by: Scott Teel <scott.teel@microchip.com>
> > Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> > Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> > Signed-off-by: Don Brace <don.brace@microchip.com>
>=20
> Patch applied (with a minor tweak; see a comment below).
>=20
> Cheers,
> Alex
>=20
> > ---
> >  man4/smartpqi.4 | 99 +++++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 99 insertions(+)
> >=20
> > diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> > index 0cb018d01fc5..d06f34d55d10 100644
> > --- a/man4/smartpqi.4
> > +++ b/man4/smartpqi.4
> > @@ -364,6 +364,105 @@ $ \c
> >  0
> >  .EE
> >  .in
> > +.TP
> > +.IR /sys/class/scsi_disk/ c : b : t : l /device/lunid
> > +The
> > +.I lunid
> > +attribute is read-only.
> > +This attribute contains the SCSI LUN ID for the device.
> > +.IP
> > +For example:
> > +.IP
> > +.in +4n
> > +.EX
> > +$ \c
> > +.B cat /sys/class/scsi_disk/13:1:0:3/device/lunid
> > +0x0300004000000000
> > +.EE
> > +.in
> > +.TP
> > +.IR /sys/class/scsi_disk/ c : b : t : l /device/unique_id
> > +The
> > +.I unique_id
> > +attribute is read-only.
> > +This attribute contains a 16-byte ID
> > +that uniquely identifies the device within the controller.
> > +.IP
> > +For example:
> > +.IP
> > +.in +4n
> > +.EX
> > +$ \c
> > +.B cat /sys/class/scsi_disk/13:1:0:3/device/unique_id
> > +600508B1001C6D4723A8E98D704FDB94
> > +.EE
> > +.in
> > +.TP
> > +.IR /sys/class/scsi_disk/ c : b : t : l /device/path_info
> > +The
> > +.I path_info
> > +attribute is read-only.
> > +This attribute contains the
> > +.IR c : b : t : l
> > +of the device
> > +along with the device type
> > +and whether the device is Active or Inactive.
> > +If the device is an HBA device,
> > +.I path_info
> > +will also display the PORT, BOX, and BAY the device is plugged into.
> > +.IP
> > +For example:
> > +.IP
> > +.in +4n
> > +.EX
> > +$ \c
> > +.B cat /sys/class/scsi_disk/13:1:0:3/device/path_info
> > +[13:1:0:3]    Direct-Access     Active
> > +
>=20
> Blank lines in man(7) source produce warnings, as they are usually a
> mistake.  In this case it's fine, but to silence the warning, we use a
> dummy character, which produces no output, but makes it so that the
> input line is not empty.
>=20
> @@ -440,7 +440,7 @@ .SS SmartPQI-specific disk attribute files in \f[BI]/=
sys\fP
>  $ \c
>  .B cat /sys/class/scsi_disk/13:1:0:3/device/path_info
>  [13:1:0:3]    Direct-Access     Active
> -
> +\&
>  $ \c
>  .B cat /sys/class/scsi_disk/12:0:9:0/device/path_info
>  [12:0:9:0]  Direct-Access   PORT: C1 BOX: 1 BAY: 14 Inactive
>=20
> > +$ \c
> > +.B cat /sys/class/scsi_disk/12:0:9:0/device/path_info
> > +[12:0:9:0]  Direct-Access   PORT: C1 BOX: 1 BAY: 14 Inactive
> > +[12:0:9:0]  Direct-Access   PORT: C0 BOX: 1 BAY: 14 Active
> > +.EE
> > +.in
> > +.TP
> > +.IR /sys/class/scsi_disk/ c : b : t : l /device/raid_bypass_cnt
> > +The
> > +.I raid_bypass_cnt
> > +attribute is read-only.
> > +This attribute contains the number of I/O requests
> > +that have gone through the ioaccel path
> > +for ioaccel-enabled volumes.
> > +See the
> > +.BI ssd_smart_path_enabled

Oh, and this triggered a warning.  I've amended it to use B instead of
BI.  See:

$ make lint build check -j24 -k
TROFF	.tmp/man/man4/smartpqi.4.cat.set
an.tmac:man4/smartpqi.4:459: style: .BI expects at least 2 arguments, got 1
make: *** [share/mk/build/catman.mk:54: .tmp/man/man4/smartpqi.4.cat.set] E=
rror 1
make: *** Deleting file '.tmp/man/man4/smartpqi.4.cat.set'
make: Target 'build' not remade because of errors.
make: Target 'check' not remade because of errors.

Cheers,
Alex

> > +disk attribute section for details on ioaccel-enabled volumes.
> > +.IP
> > +For example:
> > +.IP
> > +.in +4n
> > +.EX
> > +$ \c
> > +.B cat /sys/class/scsi_disk/13:1:0:3/device/raid_bypass_cnt
> > +0x300
> > +.EE
> > +.in
> > +.TP
> > +.IR /sys/class/scsi_disk/ c : b : t : l /device/sas_ncq_prio_enable
> > +The
> > +.I sas_ncq_prio_enable
> > +attribute is read/write.
> > +This attribute enables SATA NCQ priority support.
> > +This attribute works only when device has NCQ support
> > +and controller firmware can handle IO with NCQ priority attribute.
> > +.IP
> > +For example:
> > +.IP
> > +.in +4n
> > +.EX
> > +$ \c
> > +.B echo 1 > /sys/class/scsi_disk/13:1:0:3/device/sas_ncq_prio_enable
> > +.EE
> > +.in
> >  .SH VERSIONS
> >  The
> >  .B smartpqi
> > --=20
> > 2.42.0.482.g2e8e77cbac
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--DCDHaoZtuuANtGt8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU4UdYACgkQnowa+77/
2zJL4w//TknJ4HBfAPkHwqnIWslaH+WRugjOg7rS1E6B0PCqy4c9LGxwWzo943VA
ShMrOdG64PuOC5pHLQ0PFleE79DzRjKbAsXUm909olJPKOhJeMmvryiZH5mqFQGL
JRIhKL1uI1rP+o6ZCjh5F7fhnuksAwONs1eJtmdevqcgQjEGG1xc7rYMfBqF4wtr
vRCscMvtfdpbQlN2n7o6+rqR2FMVd4vIHJqbnHW6srRVEEtPIRZc6HqnBz9uBRK3
WAS8jEB4j3zZj7tL35xjBDEkjVQd9WlhV7qHHQWLomjxySaA6NIf14KJonG9pFDu
chq3r7LpmufVDV5p6wcD80elVC/6GK5dQycoK/SdVZmEw8Ph0zjSILc/zJo2I50i
inNhGrtiee/m0mMyvCEF3PxMHJoojUqnzhLuhzVGMWOnFKNNOP3Y1ebbRTObzPcp
wnpriJBhdjzSdwR3qgDkzg2MamQkmKWcbNd0CdG34cFac5kWS4wWxWPUwwEVzGfe
RVeNfMyhiAYWG0Mj5HAJs6uIUKwqTCuce9bPgABC4Gxr8V5KlO/zL2tXzZA/xZTI
j0qmfI3bl18auuF35ZaObhezLGMQWXVoEvCfo+i4USZ3O1CV1OkKC7cNLcxAM571
URfKXldgdPGQEiHhw6eePOUD65UE6VT1U/zFgcDIACjn7tkfLbM=
=A43R
-----END PGP SIGNATURE-----

--DCDHaoZtuuANtGt8--
