Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 802C47B3CDD
	for <lists+linux-man@lfdr.de>; Sat, 30 Sep 2023 01:04:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbjI2XEH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Sep 2023 19:04:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229962AbjI2XEG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Sep 2023 19:04:06 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 483CDDD
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 16:04:05 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E858BC433C7;
        Fri, 29 Sep 2023 23:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696028644;
        bh=UlJ6f7EB/iqv7FcGFmGDForL1sK3ew91yfm3FGTN0Po=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qvFyEaJooyxYQRdb8yWlbkJJXCgh6ShnjALlysyiBp5HSyvwo6UTVN+f0cjDibuvR
         MupQ2lt1Dd5EdCoBzx4A/UD5TZhYbL6XllRBOa/8iWLd7p01c08DYdHsawKVOdfplY
         CBMHZeTNJfBTl0cEV6c/tR8dmZMzBUgaMkWX0x8ZO/HwMGEvNHUwrSCW76uNSQIHfV
         mvmy3/Jp5qRixW2eXoH1An4FzOqjkSf8NLEwmsS5LaPy/Zaw2Nyr3wRrhC57v4YH8D
         39BZyq20YsCCm10mcNwn2pGRbuuuvAUWgFUIv0adJ4sKb959cXxVqjdc9G2xpzrtFs
         UZIV+vcmUSWdw==
Date:   Sat, 30 Sep 2023 01:04:01 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, aeb@cwi.nl, linux-man@vger.kernel.org
Subject: Re: [PATCH] smartpqi: add sg entry to see_also
Message-ID: <xxbeym6jlbhmk7vov5iuk6hrtbenrnvd5wh4odtqvn5za5eiil@4k6zmyoq5t4a>
References: <20230927154547.724640-1-don.brace@microchip.com>
 <20230927154547.724640-2-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="kam6cfpmxg2slpc5"
Content-Disposition: inline
In-Reply-To: <20230927154547.724640-2-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kam6cfpmxg2slpc5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] smartpqi: add sg entry to see_also
MIME-Version: 1.0

Hi Don,

On Wed, Sep 27, 2023 at 10:45:47AM -0500, Don Brace wrote:
> The sg driver can interface with smartpqi. Add
> this into the SEE ALSO section of the man page.
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>

Patch applied.

Thanks,
Alex

> ---
>  man4/smartpqi.4 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 3de8b0c97423..7c1da3c80d57 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -462,7 +462,8 @@ which can be found by searching for the specific cont=
roller at
>  .BR cciss (4),
>  .BR hpsa (4),
>  .BR sd (4),
> -.BR st (4)
> +.BR st (4),
> +.BR sg (4)
>  .PP
>  .I Documentation/ABI/testing/sysfs\-bus\-pci\-devices\-cciss
>  in the Linux kernel source tree.
> --=20
> 2.42.0.158.g94e83dcf5b
>=20

--kam6cfpmxg2slpc5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUXV+EACgkQnowa+77/
2zKL4Q/+NsxZu9O5/KdzfwbnOoA9Pg2ZQcq5hhqxDnLuGb+PhRZHFsLvO3eGs1/l
jIlld9ZwcKJhhwqgSvJPkHw5bqaJlaEm+Cjejok+WkqkGHP1UPrV3aBrOj+vVFmC
MhqN6BzHFkjgWxdGj5bo8q0Lc4VJ9WuNyiu26bn13HWWeLKGp9ZnvcCH975U0Rr2
bzT/3XkSu1uzWIPzWifjBMau0Wel2pKDIxMQSqXNoJF3HbQianDuINCFdr7Gccrc
Hjly0cPGFgJAi3m8jvmP9ax6HS1A0HX57jjJgYp3EPu3I9fA82zcA1RiQzf33F2m
mpuqZ772Gk9eREjrG9Fxo9Ns0m10EBIxjPR7p3U3vccJN//kJ6y2LFN8sFAuox3D
I9K2jegEegWB3otDeEz3EMKhChc9xe9a4Xb84Xnhit9AbWxpjROH+BpgO9ZDm1S3
tToP3+Mq2mzevK3XkAoW8+apG61hw8Oe4uCTZQ8FcX49hhwtcg1WvIxhh8UHGIub
pl1DosPAoe/pO2ymOBoJYBIfhKWrkzdQWOvnuzWNrH2NJ/q8NAAS6YNfx8jG63iG
IPiLotelvKYAOoPTX9e+TiVGOn7fo2MIgUqQ+ZVLc+fAaOFWbR2clcPVWjnPWLA5
AX1yVBISq7inSLGx4VaG3o1llR+Uil4RZ9aWyirHGJzP2CNT5Vg=
=z7HQ
-----END PGP SIGNATURE-----

--kam6cfpmxg2slpc5--
