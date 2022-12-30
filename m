Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B41B46598D9
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 14:40:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235055AbiL3Nkv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 08:40:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235085AbiL3Nkn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 08:40:43 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48FF61AA1A
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 05:40:38 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id bs20so17833591wrb.3
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 05:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k0KLM7ZD/3ReIug6Usqlvm4LbRA9C411b2VAUA/Jqqg=;
        b=ci9mR9xQDi61uL7zBYyCkrK7NkYMoWBg/zKtykP+Srjm7VNWrjIOwak2oMNBhSkM1+
         ObOrmtwrLODWWUtwU3z7EYveh5iHwk9J0aX8wGYUvd6BlpxjV8+rX+4a9aVpK6ULjDiV
         OcVMgQW+fUTAc/VbZ6W5YE5XKkulnRA6LyZaUx+VewIB80KKuhshP9fh8nbrGmoQD0Zi
         q+L2/tfj2na+sIIrw0huNCWIgu4p+RZrWZDaPYJ8gt4GQd1FYH07Ah2Pmk/Y3wcMempr
         AUah0buvVBvsULaNMKYcRadZHo4SHmLICATSlTt3vQm3xsBWGuIisPsZyuP/Fej9+NLu
         fDrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k0KLM7ZD/3ReIug6Usqlvm4LbRA9C411b2VAUA/Jqqg=;
        b=JQpU7ajsAd379LbD91zKRdBFrfdd1LyJgZ3bJfrh/MONFnEadE2UbasUKX0jPs88N2
         G8wmEQuFPGDV7KasN17V/KggIKcrWF8UKU+6WInYK2F6tz5wvKvoJ/qqephJ0+T78PfQ
         OWNWgW4KBn4x2RT1Q5G5dgGwRDLov+Bs+TDfXlryWdNnsnmL0N5/jcLjXDojGydw2xqB
         fwPW4xtbRgmH2S/aG60tmXrKVcZ+zZTfnjgClAVsOfDZtu71Lz/CrehyWnKSCW/6rt3j
         dm0Fia6kBn8LwYgvpwwUcNmb4o6A+Fw6tOR3X80w8rlKjGdRKnj/edfeCUIzO05A3fL6
         d8Yw==
X-Gm-Message-State: AFqh2ko9JBo4oSA30dv2+xxnzWk/ZyFyezu13PNZJbBJN/fXyB67PGaq
        MiqJ5RpaDBUuMMQwqh6tJSqO1+TXmGo=
X-Google-Smtp-Source: AMrXdXt1iBcN2T+2k7U4k7N1yvb/GAsjtQH31nLuN/UnwdruVmsPrBlz8wlAJdmusSWETF+nrDgyQQ==
X-Received: by 2002:adf:ff8e:0:b0:24a:f05d:b38c with SMTP id j14-20020adfff8e000000b0024af05db38cmr19490219wrr.49.1672407636695;
        Fri, 30 Dec 2022 05:40:36 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q7-20020adff947000000b002426d0a4048sm20226618wrr.49.2022.12.30.05.40.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 05:40:36 -0800 (PST)
Message-ID: <2efd4230-eff1-1989-95ec-1b6b9060eda4@gmail.com>
Date:   Fri, 30 Dec 2022 14:40:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/2] bpf-helpers.7, open_how.2type, string_copying.7: tfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>, Samanta Navarro <ferivoz@riseup.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221230120302.kzclmkh25r46lh4o@localhost>
 <20221230133911.nzotjtyne5jkdcnp@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221230133911.nzotjtyne5jkdcnp@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------E0F7EmsL3kXOOghLBTtyL7oH"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------E0F7EmsL3kXOOghLBTtyL7oH
Content-Type: multipart/mixed; boundary="------------YMg3AMTQRSOTovmjUvBb00eb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Samanta Navarro <ferivoz@riseup.net>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <2efd4230-eff1-1989-95ec-1b6b9060eda4@gmail.com>
Subject: Re: [PATCH 1/2] bpf-helpers.7, open_how.2type, string_copying.7: tfix
References: <20221230120302.kzclmkh25r46lh4o@localhost>
 <20221230133911.nzotjtyne5jkdcnp@jwilk.net>
In-Reply-To: <20221230133911.nzotjtyne5jkdcnp@jwilk.net>

--------------YMg3AMTQRSOTovmjUvBb00eb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDEyLzMwLzIyIDE0OjM5LCBKYWt1YiBXaWxrIHdyb3RlOg0KPiAq
IFNhbWFudGEgTmF2YXJybyA8ZmVyaXZvekByaXNldXAubmV0PiwgMjAyMi0xMi0zMCAxMjow
MzoNCj4+IG1hbjcvYnBmLWhlbHBlcnMuN8KgwqDCoMKgwqAgfCA2ICsrKy0tLQ0KPiANCj4g
VGhpcyBwYWdlIHNob3VsZCBub3QgYmUgZWRpdGVkIG1hbnVhbGx5LCBiZWNhdXNlIGl0IHdh
cyBnZW5lcmF0ZWQgZnJvbSB0aGUgDQo+IGtlcm5lbCBzb3VyY2VzLg0KPiANCj4gQUZBSUNT
IHRoZSBtaXNzcGVsbGluZ3MgaW4gcXVlc3Rpb24gaGF2ZSBiZWVuIGFscmVhZHkgZml4ZWQg
dGhlcmUsIHNvIGl0IHNob3VsZCANCj4gYmUgYSBtYXR0ZXIgb2YgcmVnZW5lcmF0aW5nIHRo
ZSBwYWdlLg0KDQpBaGggdGhhbmtzLCBJIGZvcmdvdCENCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Cj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------YMg3AMTQRSOTovmjUvBb00eb--

--------------E0F7EmsL3kXOOghLBTtyL7oH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOu6kwACgkQnowa+77/
2zLj1Q//SiX8CtkpAlTqaigvQ/32wPFXwOtypJ2K4YaBfGbJh/r8qFgpDi8mt2in
qpbnDuLgnpb4yR3Oy7PomD4zvsI+PnPSr22ZN+4GtCiwwjGTPC2DbXWor1CYQvER
TIQfjRmiaMrI520yP658SdWjkjwGBmPvIvYFvheBpKyMUzXac7GVGgJzriVQ1Ssg
VxrgPJtzIr7fuSZPT8QtCfRTUuj/mANg2Q0D57IzJm/x2S25iiGB8qpnsIuTBT/4
zfp2rFQhwCM4Mhs91Y/HC/GDJpnFLhn35nh4I45ZICrF76Ts22Ho24nVDMn5P4IB
1lQHk50SSzqaH6vQIOxtl5kpfvggS1IxgDh86FDkfWu4db5QZepQ3NFQ07r+/OP9
CMmf8ZwDk2x7BT/3QhGz00kEpBU6o4hPBz8JcTyjoSYANLjfu3SNalNge9h16VXy
mAUWuvaqf+7Q1FX3uxCXWQPx9ssw8h/aRse/Q6PvRa3mjzMdXwFuuwvZBVaBs+eE
05rET1B4UYTUzbjRUfv+fRJLIAqjPHEQQTNv9XwRe3KlTMfhAe9B2nsDKROFvm0G
S1iFmnQv+F1jxCvtMVQOjdvE6hJIJzuXqmjLs2jrjIfnY0qjXYdASzL5I5FhdKkq
PWt6+AnTGftpSBt6pHziZv5yf0LHgPVSJeI6NuGlardPTUdOy7M=
=VJpC
-----END PGP SIGNATURE-----

--------------E0F7EmsL3kXOOghLBTtyL7oH--
