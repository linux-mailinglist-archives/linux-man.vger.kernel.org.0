Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41011767730
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 22:48:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjG1UsQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 16:48:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229485AbjG1UsP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 16:48:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEA2430DA
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 13:48:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 42A1C62204
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 20:48:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3A38C433C8;
        Fri, 28 Jul 2023 20:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690577293;
        bh=gAmpXO/8HaMvsOR7iDwfghuDUbiZp7+dWrtULqBtNwA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=ipqjlHKXZCClj1IYfai2HP9MPu7hv7fwCvwwSWjkfR4/ABNTwAtXoxJWjKOKWutuK
         vH6vcnbV8StFFam/yzCT0fQ7rhz6eZ3bd/uyGQbhBHqsk9z+7Ho0frfcHkddrGagHr
         U0JlO/W4imlgAel0bNXlRNF22j5f7R75lNu9L9e99bQhcklj+KG5foutERzDr63/f0
         ggfi353SuDxoYPdsKIkP1gepUzgirBqtbsXdWORu1i4VkuVa05SnGfJsNDgofPH+8u
         od3Bu9ExcY1b0znV1cATWKnNYSY6R11CiAu/+cFLtmUmryeQrCGu/PSPBmQLTcARxN
         PN1ruy6pDv2rg==
Message-ID: <9b26cd45-08e1-8905-4b8a-dfa65d654b99@kernel.org>
Date:   Fri, 28 Jul 2023 22:48:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] Fix the man page
Content-Language: en-US
To:     Zijun Zhao <zijunzhao@google.com>
Cc:     linux-man@vger.kernel.org, enh <enh@google.com>
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
 <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
 <CAELULbcAtuqehXmDeRjOPtCOuriw9hrUU2Ndw8-i0Z=9GkbNzg@mail.gmail.com>
 <CAELULbfDFt2Z3T45_brzhWzL8182R=uxpHy_rSdgBSXpp+QQKQ@mail.gmail.com>
 <CAJgzZoqS-QJWX87P5B1LQxCktm9BAVfVVBwBxV87RhmQg0fsdg@mail.gmail.com>
 <CAJgzZooCj9FcHwMam0TC_y6c33K8OFuWGGS0_-Ji+eEhLsXo_Q@mail.gmail.com>
 <e7083e0d-92c2-ae07-7ff5-f7fa1ca91be6@kernel.org>
 <bf4dd8ed-ded3-6fe0-d3fa-afa63164bc4c@kernel.org>
 <CAELULbcxcmRXCkXx3_q2WMb8eMHTGfRRw=kmsOCBr-YRauOgUQ@mail.gmail.com>
 <61009d70-8033-2e6d-7916-f45033398d7d@kernel.org>
 <CAELULbd+_kOKdJcKuTS8XqbcFyeZB6Qsi8J_YAe6WuO_+n=26A@mail.gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CAELULbd+_kOKdJcKuTS8XqbcFyeZB6Qsi8J_YAe6WuO_+n=26A@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OWRq5Op5BLeqSS0dQVIIPPrd"
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
--------------OWRq5Op5BLeqSS0dQVIIPPrd
Content-Type: multipart/mixed; boundary="------------eGK3iqFqCtcFodqo2eO9ZODV";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Zijun Zhao <zijunzhao@google.com>
Cc: linux-man@vger.kernel.org, enh <enh@google.com>
Message-ID: <9b26cd45-08e1-8905-4b8a-dfa65d654b99@kernel.org>
Subject: Re: [PATCH] Fix the man page
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
 <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com>
 <CAELULbcAtuqehXmDeRjOPtCOuriw9hrUU2Ndw8-i0Z=9GkbNzg@mail.gmail.com>
 <CAELULbfDFt2Z3T45_brzhWzL8182R=uxpHy_rSdgBSXpp+QQKQ@mail.gmail.com>
 <CAJgzZoqS-QJWX87P5B1LQxCktm9BAVfVVBwBxV87RhmQg0fsdg@mail.gmail.com>
 <CAJgzZooCj9FcHwMam0TC_y6c33K8OFuWGGS0_-Ji+eEhLsXo_Q@mail.gmail.com>
 <e7083e0d-92c2-ae07-7ff5-f7fa1ca91be6@kernel.org>
 <bf4dd8ed-ded3-6fe0-d3fa-afa63164bc4c@kernel.org>
 <CAELULbcxcmRXCkXx3_q2WMb8eMHTGfRRw=kmsOCBr-YRauOgUQ@mail.gmail.com>
 <61009d70-8033-2e6d-7916-f45033398d7d@kernel.org>
 <CAELULbd+_kOKdJcKuTS8XqbcFyeZB6Qsi8J_YAe6WuO_+n=26A@mail.gmail.com>
In-Reply-To: <CAELULbd+_kOKdJcKuTS8XqbcFyeZB6Qsi8J_YAe6WuO_+n=26A@mail.gmail.com>

--------------eGK3iqFqCtcFodqo2eO9ZODV
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-27 20:33, Zijun Zhao wrote:
> Hi Alejandro,
>   Sorry for the late reply! Thank you for your help! Yes, all comments
> are very clear, understandable and helpful! This is the new patch.
> Thank you for reviewing! Also, thank Elliott for helping! Hope this
> patch is qualified!
> Best,
> Zijun

Heh, I replied to the wrong email.  Thanks for the patch; I applied it
(I applied this one, even if I replied to the other one).

Cheers,
Alex

>=20
>=20
> On Sat, Jul 15, 2023 at 9:13=E2=80=AFAM Alejandro Colomar <alx@kernel.o=
rg> wrote:
>>
>> Hi Zijun,
>>
>> On 2023-07-12 01:48, Zijun Zhao wrote:
>>> Hi Alejandro,
>>>   Sorry for the late reply!
>>
>> No problem :-)
>>
>>> I made some changes(make the subject more
>>> formal, add a blank line, respect the80-column right margin and use -=
u
>>> to when doing git format-patch) and attached the patch below.
>>
>> Thanks!
>>
>>> But I am
>>> a bit confused about semantic newlines. I think I already start on a
>>> new line and use clause breaks to split long sentences? Do I
>>> misunderstand something? Thank you!
>>
>> Here's your patch, modified to use semantic newlines:
>>
>> +The kernel accepts null for both time and timezone.
>> +The timezone argument is ignored by glibc and musl,
>> +and not passed to/from the kernel.
>> +Android's bionic passes the timezone argument to/from the kernel,
>> +but Android does not update the kernel timezone
>> +based on the device timezone in Settings,
>> +so the kernel's timezone is typically UTC.
>>
>> Does it make sense now?
>>
>> I'll also comment a few things about the patch:
>>
>>> +The kernel accepts null for both time and timezone.
>>
>> We should use the 'tv' and 'tz' identifiers.  We should also use NULL.=

>> I suggest:
>>
>> The kernel accepts NULL for both
>> .I tv
>> and
>> .IR tz .
>>
>>> +The timezone argument is ignored by glibc and musl,
>>> +and not passed to/from the kernel.
>>> +Android's bionic passes the timezone argument to/from the kernel,
>>
>> Could you give an example of why bionic differs from glibc and musl,
>> and why it can be useful.  It is mostly curiosity, but it might be
>> useful to have it documented in the commit message.
>>
>>> +but Android does not update the kernel timezone
>>> +based on the device timezone in Settings,
>>> +so the kernel's timezone is typically UTC.
>>
>> Cheers,
>> Alex
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------eGK3iqFqCtcFodqo2eO9ZODV--

--------------OWRq5Op5BLeqSS0dQVIIPPrd
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEKYoACgkQnowa+77/
2zLr5RAAhuSoujwKlG1iZKZNov5Uwu5zpw0iMhzM+P3NBLQxwmjDmwi9J+aA4uI8
fYDNlxHqBYDJmBKW+Z2ZUMp6okEDlPhKbS8aWuVSp3B8SeHQVWEeJw4M0TD+yUaq
YPlS21AH/U3Di4aW+KllEzU17D6+tnSocT5NEqDt8atRXmTb+pKc1D2u5v0H5NNu
EJQbdsrcO9yDl1KOwzIgDV14haC1wmW1/bOskCunzd0bXl7L63Ukd5mvzuba57Qa
IR7opuYKxXcDL5Zz5mAONsAwYcOJHH9nS4rskpOwzg8IeeOmjwaeakhNWjosufja
3DJb8YjdW3pTTI8FTT3VGaI20NuNQxa74txH6z/zYXM14vj9cyhFnnUvdYK1fcvH
atS7pYZHrRiSIRJNkI0vhe3FySamUjbVWjOoHAPblYJV0sQyuMOAuTi6ziIDXO8G
Nv9uk58D1u9JUWsq8IuwobwoXAMUq0x6AKh1BONz0Fe1Fy0pPnheG9dRgbwUmX18
Z8qGcrxcRDt3SDthwWqKAUdQgncle8O8JsnnJ/bg+QFRpkBh7v/OO7AYNSdkkJg7
TM0SRTceMp/dcsMIjcK+nesT6HiXEHlPL2okS980PwgLYnAxuCPBF5nj9lML1AHR
/HnPZ3DAAps1jDQWD2Ge8jcBjh1pEQ5gjDWJteoTiAfwgPZdqb0=
=0RfL
-----END PGP SIGNATURE-----

--------------OWRq5Op5BLeqSS0dQVIIPPrd--
