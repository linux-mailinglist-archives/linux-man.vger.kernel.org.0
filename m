Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 193D06D71FB
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 03:32:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230455AbjDEBck (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 21:32:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235409AbjDEBcj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 21:32:39 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EF2F30E2
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 18:32:38 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id n19so20028391wms.0
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 18:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680658356; x=1683250356;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HxYj7FgThyJ9R4c64seHS1va58uXtj9oR0fPoLMM7o0=;
        b=RRfAV79Ed6DiqMGA6+oCyVROVQ+IB1jzfk7BWZDCcpo8gb7DME5LYVDB2lPXG8P5JT
         3XbnA5FnsFWATwhDVTpgXPbkQlh3d+gz5Vl1JjSk5eun59f6ACy9SfVfVVY5Fo/7tiZR
         ovUG36OlXpNSkh13U3s82xHZN/I/6TRX80u89siDpspzOGzhIjRQLg81dnnCiruTt/V/
         izU3+m8H3c9krvD/grt0kYBfxgYe25HOZ6UUH27tWEE8ySufzlgwan2qBHHK5VhcaXWY
         PznbTTUtX7+stnoIwxkp7bmzsUEm/f688RHXi/YJslzz7ORMpRaVNxazAKiHBWRim8UW
         bRAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680658356; x=1683250356;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HxYj7FgThyJ9R4c64seHS1va58uXtj9oR0fPoLMM7o0=;
        b=2B6Sr78ngTnjso+SbC3DBRyAS7gRcguiMSJYlxvEeaRh28h/sLSKBYaY6Fise+Ti84
         yGyLAZnx/8S9/kVPpl6JYD5zj4le/m1sN3ooLJNIns9c2LaAmgfTzBDl3khr0cRANQHu
         QAWfkDuw+nMM1dL+NKGEU7eNe4MrTr1RKh7JX88HuTZwfn4QpBfj82Dp2DnV2dmQT2gR
         6ixQNQvYeMhgPd0UAHBiVTnwEHiauNXIJhNzcik44+VCcK5HCLUxykYo9ohpK1NzMRO2
         vIJfYVGZ5azA8TB4pBV4uVyzorMLkY8JfW9h6y+NgpkydxVGOvz3hiwKkfJf1NJ08bbX
         oWxQ==
X-Gm-Message-State: AAQBX9cNJ7y3sFP/XcBLxsNNp56x7G+ZckNW4cRMoPxkhEqpU53QdRjQ
        OuXeORPYKeiVa+PN7Mi8qjQ=
X-Google-Smtp-Source: AKy350YmhmBNEhYa5C2vVgCearqCu2jya44GcMfX3TGGx3I+9/5L7PFrLGmtnYinbxleTyVazN+uOA==
X-Received: by 2002:a1c:7c12:0:b0:3ed:29e1:ed21 with SMTP id x18-20020a1c7c12000000b003ed29e1ed21mr3258158wmc.37.1680658356363;
        Tue, 04 Apr 2023 18:32:36 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n11-20020a7bc5cb000000b003ee70225ed2sm528185wmk.15.2023.04.04.18.32.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 18:32:36 -0700 (PDT)
Message-ID: <6409b7ad-8b17-c2c4-9671-7c251cb93471@gmail.com>
Date:   Wed, 5 Apr 2023 03:32:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCHv2] feature_test_macros.7: document clang fortify support
Content-Language: en-US
To:     Mingye Wang <arthur200126@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
 <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
 <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
 <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>
 <0219f97b-f28e-18f0-3451-87ee00f851aa@gmail.com>
 <CAD66C+anMmcxDAf+KDDzEP7B5HHyzZKiSfZM9Q5fhN3HxqaHbw@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAD66C+anMmcxDAf+KDDzEP7B5HHyzZKiSfZM9Q5fhN3HxqaHbw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8tJyUhOMQJJwviI0gu5f0I0b"
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8tJyUhOMQJJwviI0gu5f0I0b
Content-Type: multipart/mixed; boundary="------------NcRRimmBA4V2gA0OOpJQWghv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <6409b7ad-8b17-c2c4-9671-7c251cb93471@gmail.com>
Subject: Re: [PATCHv2] feature_test_macros.7: document clang fortify support
References: <CAD66C+aECcWHSogwDygQnHOvDCayHbH2emKrsUhVxkg48KzXfA@mail.gmail.com>
 <6c5593f5-efc0-564d-83fa-430328b31231@gmail.com>
 <CAD66C+Y_b_9j1Oty=kbt2jZywzdVOen4i31ndhqyTTCRp=-xTg@mail.gmail.com>
 <5858fd32-aced-7f87-a1c2-2b92c002e4d3@gmail.com>
 <CAD66C+bWn5Vm3gKa=ygvqyAkELpdCz82huqMk6FJG2Z87B0=Fw@mail.gmail.com>
 <0219f97b-f28e-18f0-3451-87ee00f851aa@gmail.com>
 <CAD66C+anMmcxDAf+KDDzEP7B5HHyzZKiSfZM9Q5fhN3HxqaHbw@mail.gmail.com>
In-Reply-To: <CAD66C+anMmcxDAf+KDDzEP7B5HHyzZKiSfZM9Q5fhN3HxqaHbw@mail.gmail.com>

--------------NcRRimmBA4V2gA0OOpJQWghv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Mingye,

On 4/3/23 18:24, Mingye Wang wrote:
> Hi Alex,
>=20
> On Sat, Apr 1, 2023 at 5:56=E2=80=AFAM Alejandro Colomar wrote:
>> If it's just a reference to the software, that is fine.  If it's a
>> reference to the version, then I want it to be greppable.
>>
>=20
> Is my patch attached to the last message all good, or is there
> anything more to do?

Sorry about the delay; I'm a bit overloaded.  Did you check Sam's
objection?

On 3/23/23 06:38, Sam James wrote:
> The patch looks OK to me in terms of the content, apart from the libssp=

> mention. libssp and stack smashing protection overall is distinct from
> fortification.
>=20
> SSP is where stack canaries are emitted and their value is checked
> later on to see if they're intact. Fortification is where certain
> functions are replaced with variants that check the size of their
> arguments e.g. dst & src and ensure they're big enough. They're distinc=
t.

Thanks,
Alex

>=20
> Thanks,
> Mingye

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------NcRRimmBA4V2gA0OOpJQWghv--

--------------8tJyUhOMQJJwviI0gu5f0I0b
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQsz6wACgkQnowa+77/
2zIHLA/+L+Wzwh7Du7Hhox2AZ6z2QzBis58kvZo5SJdojYhgpaGHiTd6SJ6RPGoA
FwjuBOwS71w8NazXpK/Rz2HWnsT/RhvvC9bCsaJE+32Hwkv9qUQ7SkeBbCq9FYFx
/VuOM+2L38k0tMNHKUQudShpcrfiTQn7CyUIYMqkHw8YcKvDS9wofzZwXvbY0pQM
r7XMjUMhV0ZUqZbXhtJOSeHDGMHSsmpkWPmC9MJMRFprLQ6/45IRkPxxZWebA7iY
eQ0QEpiXJ22uowuqm5rWgbysiVULUxdtcSIEw7atd7cEbPzmWRCxsFuIgTSlaSir
QMagNGol0ejXTa2DPkpBmVlqmIcYin6bina36YhS+oD3uwhhHxzvjTTzOE6nM0T9
gwFTATyCXHlO1bDEeD30d2I4wtuVEnAbCTSLTJbUyuudPyrRE24+JsYrblMQgOtW
LAcz8nJg9tY7EvZEhUgTLXbC1rUcclLRzVroEigh69c8rHCCxpq4ZsYFiJBmZOty
eWFYTZM3jMssoK41StckbNduBUCGAIq9/SJfnJRZ1kp8CyCp1OjuWCq245QnRRlf
HfLA0z8wdp/u7/D6wV0T8dNLh479+xkC2ZKo1YFbqneaLXZ/Bjuf78XmjWd6oQfo
CQ97qBdecbBiTowWVGekKCuy1H9gx0cfCxtJaD+rZUCoVJWwgVc=
=M7P+
-----END PGP SIGNATURE-----

--------------8tJyUhOMQJJwviI0gu5f0I0b--
