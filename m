Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE9E1767861
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 00:06:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233277AbjG1WGK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 18:06:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229792AbjG1WGK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 18:06:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 484EB2D5F
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 15:06:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id DB1E56220A
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 22:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EE3AC433C8;
        Fri, 28 Jul 2023 22:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690581968;
        bh=FgHON4xsmua3UK56LupwVV5mCerBbaZYazS+y8VTFS8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=lZyNV2iaqiZth2nt3+tUgIoksqfEyT0XLoEvoOX9vcU2yNq06NLY0yw45GLj+lCmT
         p92Z4iWPN07djFi4GTSx7i5HT2dWJXd10Var+ibuwwdw1mI/7vYfw6B5trcs+52EOj
         l1Pj5ild5oEvs2TwUWF2XZAFMF6FcyrKH0c5KxnWNcFiMSl4uGycWHtj4ZN7seM8ro
         HR5OZw7AFbCHLSthoX/8d1zN6bHh5GRLLLFlI6B5ePlX5+w0sBk/E/fHsw8sQ+GHPo
         b/K11vWgS4ly+W4WK/U6RHLAQNH3EWlFaz0MvBWihOy6QEXIqQaXCabfYubJFzGdXS
         gwnkQgthS2CGA==
Message-ID: <54326642-f188-c65c-5f6f-7f3f11e0c49f@kernel.org>
Date:   Sat, 29 Jul 2023 00:06:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] bpf.2: Added missing EAGAIN error case for BPF_PROG_LOAD
Content-Language: en-US
To:     =?UTF-8?Q?Michael_Wei=c3=9f?= <michael.weiss@aisec.fraunhofer.de>
Cc:     linux-man@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>
References: <20230721120636.100203-1-michael.weiss@aisec.fraunhofer.de>
 <bcf7a83f-7d80-1a33-bcca-bed07b12f56e@kernel.org>
 <d7bd682c-b0cd-d93a-babd-5a7644a3c903@aisec.fraunhofer.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <d7bd682c-b0cd-d93a-babd-5a7644a3c903@aisec.fraunhofer.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------l106jC5v80zqF7G4MV0VpgNN"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------l106jC5v80zqF7G4MV0VpgNN
Content-Type: multipart/mixed; boundary="------------1XB7glu031lmsr3TTey4vrUh";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?Q?Michael_Wei=c3=9f?= <michael.weiss@aisec.fraunhofer.de>
Cc: linux-man@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>
Message-ID: <54326642-f188-c65c-5f6f-7f3f11e0c49f@kernel.org>
Subject: Re: [PATCH] bpf.2: Added missing EAGAIN error case for BPF_PROG_LOAD
References: <20230721120636.100203-1-michael.weiss@aisec.fraunhofer.de>
 <bcf7a83f-7d80-1a33-bcca-bed07b12f56e@kernel.org>
 <d7bd682c-b0cd-d93a-babd-5a7644a3c903@aisec.fraunhofer.de>
In-Reply-To: <d7bd682c-b0cd-d93a-babd-5a7644a3c903@aisec.fraunhofer.de>

--------------1XB7glu031lmsr3TTey4vrUh
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-28 22:12, Michael Wei=C3=9F wrote:
> Hi Alex,
>=20
> On 28.07.23 21:42, Alejandro Colomar wrote:
>> Hi Michael, Alexei,
>>
>> On 2023-07-21 14:06, Michael Wei=C3=9F wrote:
>>> Since commit c3494801cd1785e2 ("bpf: check pending signals while
>>> verifying programs", bpf() may also fail with EAGAIN if the verifier
>>> detects pending signals.
>>>
>>> This was triggered in the cmld of GyroidOS when loading a cgroups
>>> device program during container start. We had a look in the man page
>>> and where confused that EAGAIN was not listed as possible error.
>>> Digging in the kernel source revealed the EAGAIN in the verifier
>>> introduced by the commit above. Further investigation showed that
>>> libbpf already wraps that case, by a retry loop.
>>>
>>> Since GyroidOS uses the system call directly and not libbpf, we misse=
d
>>> to handle this error correctly. Thus, this hint in the man page for
>>> the bpf() system call should be helpful for others who implement on
>>> the low-level interface, too.
>>>
>>> Signed-off-by: Michael Wei=C3=9F <michael.weiss@aisec.fraunhofer.de>
>>
>> Thanks for the patch!  I find a few sentences have some minor wording
>> issues.  I'll propose a small change to your proposal.  Please check.
>> If you confirm it, I'll amend your commit, so you don't need to resend=
=2E
>> See below
>>
>> Cheers,
>> Alex
>>
>>> ---
>>>  man2/bpf.2 | 10 ++++++++++
>>>  1 file changed, 10 insertions(+)
>>>
>>> diff --git a/man2/bpf.2 b/man2/bpf.2
>>> index d32435a1d..7cef7f24d 100644
>>> --- a/man2/bpf.2
>>> +++ b/man2/bpf.2
>>> @@ -991,6 +991,16 @@ and examine
>>>  .I log_buf
>>>  for the specific reason provided by the verifier.
>>>  .TP
>>> +.B EAGAIN
>>> +For
>>> +.BR BPF_PROG_LOAD ,
>>> +indicates that needed resources are blocked.
>>> +This is due to the verifier detects pending signals while it is chec=
king
>>> +the bpf program about its validity.
>>> +In this case, just call
>>> +.BR bpf ()
>>> +again with the same parameters.
>>> +.TP
>>
>> diff --git a/man2/bpf.2 b/man2/bpf.2
>> index 7cef7f24d..ea68e1293 100644
>> --- a/man2/bpf.2
>> +++ b/man2/bpf.2
>> @@ -995,8 +995,8 @@ .SH ERRORS
>>  For
>>  .BR BPF_PROG_LOAD ,
>>  indicates that needed resources are blocked.
>> -This is due to the verifier detects pending signals while it is check=
ing
>> -the bpf program about its validity.
>> +This happens when the verifier detects pending signals
>> +while it is checking the validity of the bpf program.
>=20
> Sounds good, confirmed.

Thanks!  Patch applied.

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
ec32926e9b5aa37c4c40fc8c09497cf2a50560a7>

Cheers,
Alex

>=20
> Thanks,
> Michael
>=20
>>  In this case, just call
>>  .BR bpf ()
>>  again with the same parameters.
>>
>>
>>>  .B EBADF
>>>  .I fd
>>>  is not an open file descriptor.
>>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------1XB7glu031lmsr3TTey4vrUh--

--------------l106jC5v80zqF7G4MV0VpgNN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEO80ACgkQnowa+77/
2zIq6Q/9GlH5Of5+qv7LPUzpLYYsvLxOUJWLTNsHqfdEAFmnCW0iIXvkwIkFaj7Z
8JDhWgBopPQJHAZlYahYXIXslkXKJjbDnikGO/mfDZ59jPfve19U9OttBRZLHb0Z
kZbPnxRjowYlGUUQJdJbQTTxpE83WphtkTPOfMtRH760JXVR5NU4iQT6Re0n/+Hs
mZehMt/2EWM6xpgyzzezSc0Y8MrLseuOCpJLXMFU2povT7GjAPfTx7w+dcDU3XfB
SiPcXQjM4pkJCb0hEwANbQAOMZVAchH3i7xOIU+ZjG2gIusKBGdVVgfxdUFf+5na
EutrkhhUvkiGNBJO0T5NK3WM4JJrnhqnyZoPB35PJduv2BOoeQ2oxYSHLXvQIgvt
UMJl/tTOJAbsGQVBKGpgINorFNPaBNfJOlA8CreEAxPAF2NgmL40HjlRDv9krvaA
tyrRRYub39aWUyBPtCjhbjHpGSCml4oSi6+smMQeced0Rlss6X7tJvQhHigyJDmc
ZMd7sbBDCR3yx/0tahJvp/A0bu3+D+pGuwgjkAkSMqCdaHbdWYrcr1vcM3y4SDcq
wyqajelqPu/2lWJe1BsaFg83BZpbmZ0/Q1VNYeM8lyODfC3GhQSLuPyVCcttI24T
9tvFjDCqbbiCMgL0xMbvXTEg4M+wGv7Yaz2ilDphiuixRnVS5Bw=
=bbKp
-----END PGP SIGNATURE-----

--------------l106jC5v80zqF7G4MV0VpgNN--
