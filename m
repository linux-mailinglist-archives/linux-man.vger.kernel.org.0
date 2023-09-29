Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 244387B3CD6
	for <lists+linux-man@lfdr.de>; Sat, 30 Sep 2023 01:02:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbjI2XCe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Sep 2023 19:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229962AbjI2XCd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Sep 2023 19:02:33 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E281DDD
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 16:02:25 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6496FC433C8;
        Fri, 29 Sep 2023 23:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696028545;
        bh=+Ey6jkRbAWH+9v3XF5ZkC5nRwLuC1gTg89hs3atYov0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UrMChHGQFMHIhvZWKLK3E585e3wc7LYzJUzj4qKv/U97co6zq3AerJv/Rj4WZizwV
         kKGDXrE1fS/3imOLY0MMze3VS/2mE1ULyYheEgXOMQNDfucFsDhdfPsrs457BUlrtC
         uMXxRTwD6rpI5gXwTc6CMykWYVHT2xlXqb3F5yr/Rkqkx+S4BdqWmdvIM5QTWauD8p
         uDIQ0V4cQkgTBcBHXT+ua4CI2gEFQu7yAdwCo+8oUsiZg2+IOeBBxZwk9C6+hKTn1a
         EeeIOp7dbWtg6fzUjQ9EDDJkDcTNSZZMkm9GX4cUOLpo0Vm+Q/Ax3us1uo8INrW0YW
         eMCeVMGGkohDw==
Date:   Sat, 30 Sep 2023 01:02:22 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, aeb@cwi.nl, linux-man@vger.kernel.org
Subject: Re: [PATCH v4] smartpqi: add module parameter
 disable_managed_interrupts
Message-ID: <c5hwydrzxumvgrlz53rtrnutnxzizu6bqn5o2jl6flshrnrkeh@icvqbinwws3t>
References: <20230927154547.724640-1-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="63u2zkrwewu3a7sb"
Content-Disposition: inline
In-Reply-To: <20230927154547.724640-1-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--63u2zkrwewu3a7sb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4] smartpqi: add module parameter
 disable_managed_interrupts
MIME-Version: 1.0

On Wed, Sep 27, 2023 at 10:45:46AM -0500, Don Brace wrote:
> Add in a description for module parameter disable_managed_interrupts.
>=20
> This module parameter allows users to disable automatic irq affinity
> setting by turning off the PCI_IRQ_AFFINITY flag when requesting
> interrupts.
>=20
> When the flag PCI_IRQ_AFFINITY is set, users cannot change the interrupt
> affinity through /proc/irq/<irq#>/*affinity*
>=20
> Some customers would like to change interrupt affinity based on their
> requirements.
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>

Patch applied, Don.

Thanks,
Alex

> ---
>  man4/smartpqi.4 | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 428d79a19840..613ef330aef1 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -16,6 +16,7 @@ smartpqi \- Microchip Smart Storage SCSI driver
>  .RB [ lockup_action=3D { none | reboot | panic }]
>  .RB [ expose_ld_first=3D { 0 | 1 }]
>  .RB [ hide_vsep=3D { 0 | 1 }]
> +.RB [ disable_managed_interrupts=3D { 0 | 1 }]
>  .YS
>  .SH DESCRIPTION
>  .B smartpqi
> @@ -100,6 +101,12 @@ The default value is 0 (physical devices exposed fir=
st).
>  .BR hide_vsep=3D { 0 | 1 }
>  This option disables exposure of the virtual SEP to the OS.
>  The default value is 0 (virtual SEP is exposed).
> +.TP
> +.BR disable_managed_interrupts=3D { 0 | 1 }
> +Disables driver utilization of Linux kernel managed interrupts for
> +controllers. The managed interrupts feature automatically distributes
> +interrupts to all available CPUs and assigns SMP affinity.
> +The default value is 0 (managed interrupts enabled).
>  .SH FILES
>  .SS Device nodes
>  Logical drives are accessed via the SCSI disk driver
> --=20
> 2.42.0.158.g94e83dcf5b
>=20

--63u2zkrwewu3a7sb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUXV30ACgkQnowa+77/
2zKBww//bIgq2OaEi7dAdhgc1aHgGfQ+PHBO/h9O3psmh000UKGpmn0Z2hqvlP5A
Qkr66auySgMaxpA2VtAFso4I5mSiOZNpceHdWlPQbZ8SwqBP3IsHeIwQbYtGQzpk
HV1lwFR0a2Pk8VNtHq1wf2NBXsmtjn6pV0XSP7pjrOM1TKD0nlrWi6iWqmbqZd0V
FtAtPm49Wr3YMnUcqI46l9UG0bEBupQrk33tD84k6ad1/RgsTbp6oVt8EXNmFQjm
gM+kMOTVfP0Zu8Y5oMTdLrevLbIUj3gHWNSTSIAOAtCNmfsV2FKmU706cW4gytN7
0AqTmbH/PNsPAdCeAQOvUOjhrGd0NcaIyH1iUgaliUq3GUSs8RVkpLuK5gBdbIKH
eFfwDnLSEy5DwPd6NnDK15pIZPby6H8pXn4Bn6qkNfVgSK3p1Io3DKvC5kfRPhKY
xZKLoyMjJi4QYQtZBb5gomKZMitqASUeSiEZhNRi5TT0JJJWOPiBdp2S5vHifxxz
gAGZwXI2O7O6xwkSfmKL9DUxZW7OtyGNeFQ8tJ8ArpsEobFYwgpEo8wmxVm78I0m
axEfifV31O4xQ1M/qZXJLUm0XwIbOloRs2W8piyRy+g2t3tjSLji3MzQ5Cp/ZyAL
a9e2XC/Cak+2Kxg4v+6B8Tn5w5wEcWa8iFYinJ4OC98b6IxHi0I=
=4W6B
-----END PGP SIGNATURE-----

--63u2zkrwewu3a7sb--
