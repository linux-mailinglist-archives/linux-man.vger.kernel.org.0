Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 880747B5930
	for <lists+linux-man@lfdr.de>; Mon,  2 Oct 2023 19:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231334AbjJBR2k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Oct 2023 13:28:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbjJBR2j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Oct 2023 13:28:39 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CDAEB3
        for <linux-man@vger.kernel.org>; Mon,  2 Oct 2023 10:28:36 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB70FC433C7;
        Mon,  2 Oct 2023 17:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696267715;
        bh=1dXXEyhI2H5vD5FP9ZU4/bhcp9jqDtBqsZg2/wBOLHM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nFyXlyBf6qnUdc3Ul6D0WzOuP9Bx35Sj0wh6v4hlvJpzZOBLpcFTzhdRkzwXpK3d5
         KZ7r0sc6X+7/+J1bMnW5AXb+LtUM3afP/yvbQVaN5vUQMA0oVV/xt/2aHIg4gK9xY+
         7HSc41//DFBsErfYqucLfvx3gjamgnTn7kD4myewJnBWRC5i+cj+zfUVDlJ1Fku2lP
         JqlPf8EGCYM9adgm+99z/C23uh4+Z+NmgLGf90LAcnvCoAtZqt1kgkf9lrS94GT8Hb
         4u777l3pkCWDM/pxznY44dRjMFe9ITELTAFnwGNHI8ybM58ScCNBDlZiILaz8C+0R4
         TQsbqUJYoqzuQ==
Date:   Mon, 2 Oct 2023 19:28:32 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don.Brace@microchip.com
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 06/10] smartpqi: update host attribute descriptions
Message-ID: <ZRr9wBEb3AxicvbR@debian>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-7-don.brace@microchip.com>
 <ss7k5ooeoi7y56j6otvdpwhgd5yltzk6nt5l6ujiiupxzpmrdx@zrcvhw364ejx>
 <SJ2PR11MB8369B169CE2E17E9AC65F847E1C5A@SJ2PR11MB8369.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="GF9qTMp+vMR7vxJ+"
Content-Disposition: inline
In-Reply-To: <SJ2PR11MB8369B169CE2E17E9AC65F847E1C5A@SJ2PR11MB8369.namprd11.prod.outlook.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--GF9qTMp+vMR7vxJ+
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 2 Oct 2023 19:28:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don.Brace@microchip.com
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 06/10] smartpqi: update host attribute descriptions

On Mon, Oct 02, 2023 at 04:32:38PM +0000, Don.Brace@microchip.com wrote:
> > -.I /sys/class/scsi_host/host*/driver_version
>=20
> > +.IR /sys/class/scsi_host/host*/driver_version
>=20
>=20
>=20
> This is wrong.=C2=A0 Why would you want this change?
>=20
>=20
> Thanks,
>=20
> Alex
> --------
>=20
> Could you clarify? Do you mean the last HUNK about driver_version?
> Of the content above?

I mean the two lines right above my line (so what's quoted in this email).

>=20
> Also, I have rebased and applied your review input to the other patches.

Thanks,
Alex

--GF9qTMp+vMR7vxJ+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUa/cAACgkQnowa+77/
2zKaAg/9EGggkSkFvwzuNgULZKDdr3MoOlH0mlDN+FWhu5tNEzYdUcQtQXTg9if5
1CXgUSwbbglp/+ozfMVLIzNoxfp7CF04CLqM016uZOIPDZd81mTpJVi7wZ0IYAqW
+cNDZyO0hOyR2YtusxPJdiR1pUfOAyv20fXld87n8WVJUY+zMiFhX8uT1D78t34/
uqdD4GI8gAsqi0/1BpDMOFbwoqahKQuZH6Fu9eAsv7/A9p1vgOR8rd6Bwkoc+F1R
vfgoF7lHXMO4ODTXbaBZx6oPSHloWJzcLm8rnoY9GxxoHH8M94H9r1zTvaRT3zM7
4Exd1784EDkPUj6pDk5ROffhDmxp6wLUgCYTrFiPSq0iX7qqGMb1lSTG9ChWFh5b
3Zk9npr5CbvH8oK7Ea8viIXyNZE6Ury8boy1cY8A2zkf+YJqdq1d98vV7JrfxZHT
PXHP136lpS96nXHCOWdtd6JNc8rV7EiHxUzA7SX2Wm9ji+1CFmS8yjneKjqzVY7J
2WA7Z0bE5kpPAk6hGuAtsFF4Q5COA8C2iVzDK6VDWcPBTpH33xSAhxyCTlwx1ort
PS0gdSQtYNQqyf9q8KHK4kFI+2X9i4RTASLB/hRMca8Yo6RZQPRcTCtQ0cfk7mtN
mwL7qZV7tiIEnWiE1MTYRR0A6pRSzV7/w90m9DTNncG8lIFnqsc=
=n94H
-----END PGP SIGNATURE-----

--GF9qTMp+vMR7vxJ+--
