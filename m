Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE6D2779BA8
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 01:51:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235080AbjHKXvn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Aug 2023 19:51:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234479AbjHKXvm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Aug 2023 19:51:42 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90282C5
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 16:51:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 24B8064394
        for <linux-man@vger.kernel.org>; Fri, 11 Aug 2023 23:51:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD1AAC433C7;
        Fri, 11 Aug 2023 23:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691797901;
        bh=dJTZeONTZffRaLVL9thYIfkJXjzMeF7jXuWb0vKKjwY=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=i95zLTxSAfB+F5ayuvjKK74tgXUI0dCsma12IWMYkqPgA1k4JEhq2bP5GOsQxzvXJ
         UDed49tjDM+ST8c/a8+HFph5XvKxlo5MeUyzAA0axG2Y2Hv4HufpKkhzWYyU7NYHSK
         Z9dQUvd7KL2kZ+9V6/UZkEHBt9aW0k2dAgl033bUepnylI5u4vqOy1gX6Mk33DGc51
         RSxBNDmOVYx5vKbFP2KxU8y+lu9XyLmvixIifVDXScs2B41NdIFuYo+ZHYUAA1dJcE
         l8TZSUyCKpvZG0zxk317Du6YSkxmGYtpK0iVzVA8RAeUDGY1T9xBNmf0FzTAg+HUvL
         ieC80ywpUzkWA==
Message-ID: <2591b315-4bd0-79d2-af09-05ea3838445d@kernel.org>
Date:   Sat, 12 Aug 2023 01:51:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-US
To:     Deri <deri@chuzzlewit.myzen.co.uk>, Brian.Inglis@shaw.ca
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org> <21975186.EfDdHjke4D@pip>
Cc:     linux-man@vger.kernel.org
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <21975186.EfDdHjke4D@pip>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DBbxlg8ThtTuQlcS6H9C43yC"
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------DBbxlg8ThtTuQlcS6H9C43yC
Content-Type: multipart/mixed; boundary="------------h4ezjP3nvapFJk7K1HEPWQ0D";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>, Brian.Inglis@shaw.ca
Cc: linux-man@vger.kernel.org
Message-ID: <2591b315-4bd0-79d2-af09-05ea3838445d@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org> <21975186.EfDdHjke4D@pip>
In-Reply-To: <21975186.EfDdHjke4D@pip>

--------------h4ezjP3nvapFJk7K1HEPWQ0D
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Deri, Brian,

On 2023-08-08 01:14, Deri wrote:
> On Monday, 7 August 2023 09:45:22 BST Alejandro Colomar wrote:
>> Nevertheless, now I remember Deri told me he hardcoded a lot of stuff
>> for 1.22.4 which should be removed after the release of 1.23.0, so it
>> seems that the time has come to chop a lot of stuff from there.
>>
>> Deri, would you mind simplifying the scripts assuming a Build-dep of
>> groff(>=3D1.23.0)?
>=20
> Hi Alex, Brian,
>=20
> I have done some work on building the pdf. One improvement is any warni=
ngs=20
> output by groff, i.e. use of the deprecated .PDF macro, now identify th=
e=20
> particular man page and line number accurately.
>=20
> I have attached two new replacement LinuxManBook directories. The first=
,=20
> 1.23.0, will run on a stock groff 1.23.0 system.

Thanks!  I've applied that change.  It's great to see the LinuxManBook/
dir reduce most of its contents.


> The second, 1.23.0+, runs=20
> with the latest gropdf which has a number of advantages for this projec=
t - you=20
> will find the resulting pdf to be more than 5mb smaller, and the page n=
umbers=20
> in the overview pane match up with the page number at the bottom of eac=
h page.

Hmm, I'm reluctant to apply that.  I don't want to maintain a copy of
gropdf(1) and all the files that accompany it.  However, I think that the=

directory that uses the system groff (1.23.0) should work with the new
gropdf(1) from 1.23+ if I build from source in my system.

But, I installed groff from git HEAD a moment ago, and I didn't notice th=
e
5 MiB improvements that you claimed, and the page numbers are wrong, so m=
aybe
I'm doing something wrong, or have a non-clean groff installation in plac=
e?

>=20
> The file NewGropdf.pdf contains description of some of the features in =
the new=20
> gropdf.
>=20
> Both of these should continue to work if the groff version changes, tha=
nks to=20
> Brian's helpful suggestion to include /usr/share/groff/current in the f=
ont=20
> path, but I have achieved this by specifying it in an -F flag rather th=
an=20
> patching gropdf.


$ tree scripts/LinuxManBook/
scripts/LinuxManBook/
=E2=94=9C=E2=94=80=E2=94=80 BuildLinuxMan.pl
=E2=94=9C=E2=94=80=E2=94=80 LMBfront.t
=E2=94=9C=E2=94=80=E2=94=80 an.tmac
=E2=94=9C=E2=94=80=E2=94=80 anmark.tmac
=E2=94=9C=E2=94=80=E2=94=80 devpdf
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 TINOR
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 Tinos.pfa
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 download
=E2=94=94=E2=94=80=E2=94=80 utp.mac

2 directories, 8 files


Do we really need all of those files?  groff(1) can probably take the an.=
tmac
and a few others from the system, no?  I'd like to reduce this to the bar=
e
minimum.


Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------h4ezjP3nvapFJk7K1HEPWQ0D--

--------------DBbxlg8ThtTuQlcS6H9C43yC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTWyYMACgkQnowa+77/
2zJC8Q/8CCdA9sQ1kvznFNa3AuDAtL+/crrATpvgMyESn6fcweks4H5mDgd3+hWV
pC2pkHvJTye+4kt257HvgKFJpx5W4PpFpfgMq2vpFmStbPz/sWxrOs+/RVJ0Us7n
Jgc9Q3s1auWW4NovzPh9Kai4Em4upAIBtSSFCFaZ+pMZFvXdqWf1KDqsmjlw8p7E
253EtMaMD4e0uhEhtYZo5chLnNgid2f+cXko+o3OnUdlvf+bMQBIYOpRRylu37GK
Wk853p9G0LqDnLvBeYWEfAcjfrzZOaWS5Z8IFrS5H16SF2d3qGC/wlExc7ywVvz/
GdyXYKEO8gDE9ehXVKNp7tPXRGfNWRNWJfz25j7BuMrQygQwOg203HoQmQsXBG77
1DE31R/uCZEWy/IZRTKijwT0D3Bi0UqcUUcffOQCOM2VKAtlKLRkSF3h4H3VA3Jx
tWipSAC0SOxM5EoRshFUHlCShRhjzxCE7BXsqRuQ1V/4G1hlOS10PfNGUTBj8K06
hxCLHWXFqJs9EGS66pTtYyP6ODU8zQ61AtXlONou03l1vcLC6Is6oBgnkWl1Fvwg
QoNFNMaBHbPOjdHDBCfxsR6BRMeFI//z15KgRThcDeEDrxYWZRb7Rs4YM/73rI/0
ULZ1ZG3o5MPw9je03MVMPkWB0XJpVJ6AHA/Ty+8ufuTj3oqEMis=
=gAlv
-----END PGP SIGNATURE-----

--------------DBbxlg8ThtTuQlcS6H9C43yC--
