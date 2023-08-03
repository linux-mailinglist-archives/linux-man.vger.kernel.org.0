Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B48776EAC4
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 15:37:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236050AbjHCNha (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 09:37:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234875AbjHCNhJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 09:37:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6B5346B4
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 06:33:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1949D61D85
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 13:32:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9218C433C7;
        Thu,  3 Aug 2023 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691069574;
        bh=HdoMN/dPo6LWuOSS7Wvgjar7qQHkvYlxJAraAlri520=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=Zl7ZYvnLJV1KFLPuyzV3zk8KeW6DM+S7aYmdZ/rgXJOmOfhtYhoMMDeCJjpmMR/zS
         meyHT6Y2F+KIOeEdi33huc26bArOgYJRiuG+0ne6kDrmcZtB1uUVyDUArU0FCqoWrn
         5YEflwyI2nuK8uUAdFwqeZcldsbQHYUD6VIaJ87fjoV1ddLxSzr3TmwzGTS1q8vf85
         9dWB2ot2lCM9Gc1ukbGY4TVuse8OYaMqxDyD4kM4saP0m9NYybVzGLqFn6MQG4z746
         HwIHIA9ny5PKzuzVW7qUeLRp9chGuRjnNS+aK1AGPbRUsWFPJ348vXxq7X6iY4YXH8
         tNZl0xQkIVyXA==
Message-ID: <61f29345-6317-00c7-542e-2b592115ecee@kernel.org>
Date:   Thu, 3 Aug 2023 15:32:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
 <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
Organization: Linux
In-Reply-To: <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wj36EbCsbqu0FSPyhQ7vWtaM"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URI_HEX
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------wj36EbCsbqu0FSPyhQ7vWtaM
Content-Type: multipart/mixed; boundary="------------y8LCCTMky6j94IqN9twlSwGW";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <61f29345-6317-00c7-542e-2b592115ecee@kernel.org>
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
 <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
In-Reply-To: <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>

--------------y8LCCTMky6j94IqN9twlSwGW
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-08-03 15:22, Alejandro Colomar wrote:
> Hi!
>=20
> On 2023-08-03 13:52, =D0=BD=D0=B0=D0=B1 wrote:
>> POSIX has for a long time implied that directories are fsyncable,
>> and since Issue 8 explicitly specifies directory syncing semantics:
>>   https://www.austingroupbugs.net/view.php?id=3D672
>>
>> Simultaneously, directories being unopenable for writing is a
>> Longest-Standing UNIX Semantic, present in the UNIX Programmer's Manua=
l
>> under directory (V), and has always been enshrined in the standards.
>>
>> Kill the FUD that says that some UNIXes require the fd to be writable:=

>> they /must not/ and this confuses users:
>>   https://101010.pl/@eater@cijber.social/110824211348995583
>>
>> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli=
=2Exyz>
>> ---
>>  man2/fsync.2 | 6 ------
>>  1 file changed, 6 deletions(-)
>>
>> diff --git a/man2/fsync.2 b/man2/fsync.2
>> index 1043e6a1b..9ced40b28 100644
>> --- a/man2/fsync.2
>> +++ b/man2/fsync.2
>> @@ -155,12 +155,6 @@ .SH VERSIONS
>>  .\" POSIX.1-2001: It shall be defined to -1 or 0 or 200112L.
>>  .\" -1: unavailable, 0: ask using sysconf().
>>  .\" glibc defines them to 1.
>> -.PP
>> -On some UNIX systems (but not Linux),
>> -.I fd
>> -must be a
>> -.I writable
>> -file descriptor.
>=20
> But that's still true.  HP-UX and AIX had that issue.  I'd move
> that paragraph to HISTORY, and say "some old UNIX systems".

s/old/ancient/  :)

>=20
> Cheers,
> Alex
>=20
>>  .SH STANDARDS
>>  POSIX.1-2008.
>>  .SH HISTORY
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------y8LCCTMky6j94IqN9twlSwGW--

--------------wj36EbCsbqu0FSPyhQ7vWtaM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTLrIQACgkQnowa+77/
2zJgSQ//ZSRjah60XJQ8nRzPwi++3GNE/ByEnubVpZ1qG4XorJoGgR+xBSFv8mbM
8o99fD5Rvt67nIP4iGuRa8NBq/38zfNupJsIyLFGN7vN8RMVLf8WCrm5jIjlx6k7
VQ+94A1ZCQt/whYnhiMo6mAIkzhtBHqMLNWyXQ+k0mkgoOX/LUn6VAaF2lYuMVfe
5gMCRObSEPPgpp67MYOxaHCevnT6j+3DoVeLcA5m6jTvqwkIl3F5bKKk9jHcFN4o
S3DEQA7F7n/os2XMKptQyWUHiuBOAM881N4TXRErw+W+JALKWSCjWBoO1u7/7wHs
/ysQi+L0vrv6jorqUXQ4XEg8BLVVVXary56XiqEcFB8wPa6pRRm6vuZ7GNGTPQqf
oNx7CTub8WdSXeEqWU/AoI6IiV2X9U2yaS7nFOTCnFsbmMle0GEftYyuadIy25I+
wHtMsWS3nO//v8zgR9VrBTR9y+JMHEJbMIxMwJcbSnFs4PHrsh16udI3NI2kKhnz
VZdKcwwn64g69a+Cce+qWbW9No6OFjnEaWOdNYG8UuW6o6FtxyN/1GeYAd4i/lQ8
DbKZCMMmwXlQC9k5nHmtY88eD+sJWiOeXZ0KMSME+vlEyNFIGLrA6FXf9Yqpq6Vq
661N9uXp+ZIMkFSOGEyrI9HvYarnwV2a12ILWM9WJoKjSEeAQKE=
=0+Bu
-----END PGP SIGNATURE-----

--------------wj36EbCsbqu0FSPyhQ7vWtaM--
