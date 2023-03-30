Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B5E56D121F
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 00:29:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230329AbjC3W3V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 18:29:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbjC3W3U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 18:29:20 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01DD9BDF1;
        Thu, 30 Mar 2023 15:29:17 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id o32so11825201wms.1;
        Thu, 30 Mar 2023 15:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680215355; x=1682807355;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I8O9i/6SYu9saYwTaSmz91BcfJZ1v7LszQHOh0/rUjw=;
        b=SV4MC6FrIMM94ZQnPMSkZtIAwFvGYtStgoflOX44ul7OwLq0sphL8pdCP7CJ30u0I2
         lfqB0lZsBZmDAtqZNzKJrJ1KcfVBuPqQivx8NDEA/zpVm29XV1EdGaWawP65CKM51AMe
         i8Nhb/DgjdmxQrEkoPG9A9RJCvENd+rXS1DozjhZJXLz0+4b88CP9qG0m7HrwXEPFYpu
         k9bjiu/22/8AVMW+Mu+hS2y79YHH2R1g9PuhTVhWZXAzjaRFwqEcXiVe6TrNeYlq6zJC
         4tY1+gqTmuM5MZYsPZbxqWA4UKtiBSrDzg6+ru5bYtS8Zkf60HSN8GaoSLeokfvAzW5+
         74EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680215355; x=1682807355;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I8O9i/6SYu9saYwTaSmz91BcfJZ1v7LszQHOh0/rUjw=;
        b=xvD0WeIOpwawuOhvJbY/66zn7yhsWzW79dM/0bW3uN4bvq5PznGRb5barsL3S+iMfV
         4nYHv2+l9OLplg5wNySRoKR1ukgO6trweKCFLTGI7Oghh8S/oiyLSP5A+9hT3Tf7YE14
         o96sJLxLJffYce8DLf8eAgTIOrP0hl2jCWVBbZfyac64rIeUDnVfOE0Txoico5EqT06Q
         WLjkuv1kMl6nVoNpqeFe7SA/hnlrSsmFgelNIfOjAlq/MID6kpsoL+v3oZTjjZC9EHy8
         8ZeZstt1Mx7x2KGs8AKR3Rb/mAn1longNSPULOuClyibADHxT6ngHK2em1MpD5FOabyq
         f+Ug==
X-Gm-Message-State: AO0yUKXvlL715xArJwMLPVsWHke1EjpZiV6aziXCsqjLWy9k2HSVGV6o
        WKxaGcsMwvNE9swNrtyNNe0Tsu9q6N0=
X-Google-Smtp-Source: AK7set8HZgKxyLw4BqKx18MWleg+Yd9AElHPbOlroq9Xfz3memMTpPWJLTh3f4myL34spVu1ZBK00g==
X-Received: by 2002:a7b:ce16:0:b0:3ed:2709:2edf with SMTP id m22-20020a7bce16000000b003ed27092edfmr20334287wmc.13.1680215354930;
        Thu, 30 Mar 2023 15:29:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id 24-20020a05600c029800b003ed246c1d28sm511084wmk.44.2023.03.30.15.29.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 15:29:14 -0700 (PDT)
Message-ID: <623b0792-3bf2-271a-d451-4d4e683ce662@gmail.com>
Date:   Fri, 31 Mar 2023 00:29:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v11] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     Jarkko Sakkinen <jarkko@kernel.org>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        nathaniel@profian.com, Michael Kerrisk <mtk.manpages@gmail.com>,
        Reinette Chatre <reinette.chatre@intel.com>
References: <20211211153320.17438-1-jarkko@kernel.org>
 <c58f3951-282c-ef66-fc62-844da06c5af4@gmail.com> <YfNElmmBbkw1Xpfy@iki.fi>
 <0bdb594e-7c3d-e05a-0d40-eff92b4cd252@gmail.com> <YhKfA87I0BbkLg+m@iki.fi>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YhKfA87I0BbkLg+m@iki.fi>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XRx6B0Z0shXGmzmAi0K0iXJc"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------XRx6B0Z0shXGmzmAi0K0iXJc
Content-Type: multipart/mixed; boundary="------------C0G6RVSdCOlTXvMXU4fnrezH";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jarkko Sakkinen <jarkko@kernel.org>
Cc: linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, nathaniel@profian.com,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Reinette Chatre <reinette.chatre@intel.com>
Message-ID: <623b0792-3bf2-271a-d451-4d4e683ce662@gmail.com>
Subject: Re: [PATCH v11] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
References: <20211211153320.17438-1-jarkko@kernel.org>
 <c58f3951-282c-ef66-fc62-844da06c5af4@gmail.com> <YfNElmmBbkw1Xpfy@iki.fi>
 <0bdb594e-7c3d-e05a-0d40-eff92b4cd252@gmail.com> <YhKfA87I0BbkLg+m@iki.fi>
In-Reply-To: <YhKfA87I0BbkLg+m@iki.fi>

--------------C0G6RVSdCOlTXvMXU4fnrezH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jarkko,

I was revisiting old mails, and found this thread that seems unresolved.
Do you still have the page around and want to send it?

Cheers,

Alex


On 2/20/22 21:05, Jarkko Sakkinen wrote:
> On Wed, Feb 09, 2022 at 09:19:54PM +0100, Alejandro Colomar (man-pages)=
 wrote:
>> Hi Jarkko,
>>
>> On 1/28/22 02:19, Jarkko Sakkinen wrote:
>>> On Fri, Dec 17, 2021 at 02:50:56AM +0100, Alejandro Colomar (man-page=
s) wrote:
>>>> Hi Jarkko,
>>>>
>>>> Please see some comments below.
>>>>
>>>> Thanks,
>>>> Alex
>>>
>>> Thank you. I've addressed all the comments below. However, I feel tha=
t
>>> /dev/sgx_provision is not properly documented at all. I also think th=
at
>>> Reinette's argument for v10 was fair that "remove VEPC" ioctl that QE=
MU
>>> uses should not be left out from the initial patch set.
>>>
>>> I'm implementing user space that doest attestation, so I rather write=
 a
>>> proper description of the attestation, once it is working, rather tha=
n add
>>> to the number of review rounds.
>>
>> Fair enough.  Please send an v12 with those comments addressed, and I'=
ll
>> merge it!  (if you miss anything, we'll fix it later, don't worry)
>=20
> It took me two weeks to do the remote attestation implementation for En=
arx
> project [*] but I needed to do it before continuing with the man page. =
I'll
> continue with this some time next week. It's not exactly directly attac=
hed
> to kernel API but I think it is good to bring some context on that.
>=20
> [*] https://github.com/enarx/enarx/pull/1329
>=20
> BR, Jarkko

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------C0G6RVSdCOlTXvMXU4fnrezH--

--------------XRx6B0Z0shXGmzmAi0K0iXJc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQmDTIACgkQnowa+77/
2zJgXg/5AbhAKDbZodgfcJ2pXgcdlpj6CI0UNMOesAsrbLMJqKv9hGKfiI9W5eVZ
lcBudmAzWcVX6Xt4ORBSxlgT57eIXb3txXlPBoP3PdrolnsRZHcKqUL3Syxr2Uax
MF1L8gxyRGiz4Nnn1h6INY7yHHl3Z9jUE+rmBT2wigO3VoWZydyBhDT8mz6UukYL
IXgO5JEUij4SKJKZ4cQYnb5amfFmUa/OBCdhDTUjEcApGO8EBhq75fLkP8MMKero
u74WUqOBbtPi1JMcdMIyCupYBqWz+bi1IZjRdN1RGDs3oPmSLmazype2sTIwWgbg
nCoXokNji3twPvsPaKsBu86hPdi0aRrOAPuGo2sJZHlaaO8ni5NOoNjfB1TG7BKY
AH+Vq7I1U5Y+YmvwJ13+B6B4qJf5n/p5E1NpJdc2KFUG6zscbqnRleB54fZy6oww
YkZAv+YXD8C+r8QrWBSgSfUe+f2iBSwUg9Vi+tO/1NSmX00GC1wmMpv6On1R4355
qg0LhhrdppCOY9RzcoahpYqJox7dZ9Rdx1DwEX9+iQXkUPN5zkKRtLSZ8iZxaLp6
QGnT64nXSKyLLm+KUT0XNxroAWvUBkY1Py2qTj6wHiwEuctVTvw35goGBYgvvo2E
11vGjjHDE62m9sGw3p0Ipw3FKKT2kwmJUJhAlE4yYBLHG0zdIBQ=
=I7uY
-----END PGP SIGNATURE-----

--------------XRx6B0Z0shXGmzmAi0K0iXJc--
