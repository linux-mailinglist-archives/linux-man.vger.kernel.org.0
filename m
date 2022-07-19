Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D36AF57A3DD
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 17:59:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239690AbiGSP73 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 11:59:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236186AbiGSP73 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 11:59:29 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20C9E5B79F
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 08:59:28 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id u14-20020a05600c00ce00b003a323062569so1246683wmm.4
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 08:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :content-language:from:in-reply-to;
        bh=e0bRbLHoo/9EfIBxHa0XaxvA6jCjbPsyz4XBTLQZ/tc=;
        b=Ry6pBnOPM58rftP+NmpDCbN3pCgfFnaW4jKTVNtNTLPrILv67z4aF+jPAU59Xlh8WD
         0T4ISTwxccRxHktLUBM2F69BajJ4uifNlZ3bobC889zicFq6d+M3cPIAN2Sy44VcdX+1
         7QuKDuXn4RlQCBmuPA9pBQmtYUw0MoeQN6JqT6sbfgR6X4dYvmoibfMTnRyL2+W0P+XF
         YGvhskeoJ+0sIerpOFHk6IjCEw4Z3hF3DWQmjBJjdcO+Lc83vm2g9eiGIuWNRf/Idg0d
         QenjUbiew1pu7mGfH1lXemZ7T8KOmQzUEJMhDklK9FwMQt+XBcRnynym3KDAZrzXXeDN
         4kuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:content-language:from:in-reply-to;
        bh=e0bRbLHoo/9EfIBxHa0XaxvA6jCjbPsyz4XBTLQZ/tc=;
        b=MVc3JhIt1gj2AKPc/FmDjK3WKrq6sBaMOpDgfukjk0HONQSmkDKNkZdviqxtwJnkXE
         nKa7VPlIji1eqFdZLr7CgNoMtpMZEwE0oCISshvog4f4p10W94sSsXFYNxaasH4CWsNw
         ND9+WOhrmOHk29pxNRQX1TlM2zyR88zW3a27pREKLSQ8WSQ0SWjUQZkWZORJ7pgPjiij
         fEuHlhHbaiI+KfL6UJqd5iP8x7Y/TSo7Ss1tG+1TOslM9VMuSGYKtjw1R0KTt5qx/XS+
         HgOtVH48eWSQkc80gTGq9rnlh23Pg7a8Ay53ogExMDDmAG1Sl9rm8bMTw/vsSDcss9vg
         2iMA==
X-Gm-Message-State: AJIora/bctI7VIf2DXFOlOn+ukbTSifq2/vI4m5v+R93bYLURodnd//H
        K88NPd8+YKJqjvYmgLJJt2G+JPsYk94=
X-Google-Smtp-Source: AGRyM1uv7htTKwyxE586s955kaxDeFlz8T115MGZYhTxDBbK/rVPO23M4VU4FL5JuBm2mRAPzBsImg==
X-Received: by 2002:a1c:7401:0:b0:3a3:182f:7be9 with SMTP id p1-20020a1c7401000000b003a3182f7be9mr12537115wmc.189.1658246366561;
        Tue, 19 Jul 2022 08:59:26 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v130-20020a1cac88000000b003a046549a85sm23035107wme.37.2022.07.19.08.59.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 08:59:25 -0700 (PDT)
Message-ID: <4730d4a1-770e-3555-9e59-6a0956b14676@gmail.com>
Date:   Tue, 19 Jul 2022 17:59:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v2 2/4] tm.3type: widen member alignment to take up to
 const char *
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <7c67aa514f7747d7eabed33a815552265a357159.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <7c67aa514f7747d7eabed33a815552265a357159.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AIXh3lKEpzXqf7XcbAQysqE7"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------AIXh3lKEpzXqf7XcbAQysqE7
Content-Type: multipart/mixed; boundary="------------9U1PcL7COfLpy0N6gWua6ff0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <4730d4a1-770e-3555-9e59-6a0956b14676@gmail.com>
Subject: Re: [PATCH v2 2/4] tm.3type: widen member alignment to take up to
 const char *
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <7c67aa514f7747d7eabed33a815552265a357159.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <7c67aa514f7747d7eabed33a815552265a357159.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>

--------------9U1PcL7COfLpy0N6gWua6ff0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDcvMTkvMjIgMTc6MzUsINC90LDQsSB3cm90ZToNCj4gVGhpcyBsZXRzIHVzIHRh
a2UgY29uc3QgY2hhciAqdG1fem9uZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlh
IFppZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQoNClBh
dGNoZXMgdjIgMS80IGFuZCAyLzQgYXBwbGllZC4NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4g
LS0tDQo+ICAgbWFuMy90bS4zdHlwZSB8IDE4ICsrKysrKysrKy0tLS0tLS0tLQ0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvbWFuMy90bS4zdHlwZSBiL21hbjMvdG0uM3R5cGUNCj4gaW5kZXggMTUy
ODRjNjg3Li43OGUwNWE0MWEgMTAwNjQ0DQo+IC0tLSBhL21hbjMvdG0uM3R5cGUNCj4gKysr
IGIvbWFuMy90bS4zdHlwZQ0KPiBAQCAtMTQsMTcgKzE0LDE3IEBAIFN0YW5kYXJkIEMgbGli
cmFyeQ0KPiAgIC5CICNpbmNsdWRlIDx0aW1lLmg+DQo+ICAgLlBQDQo+ICAgLkIgc3RydWN0
IHRtIHsNCj4gLS5CUiAiICAgIGludCAgdG1fc2VjOyIgIiAgICAvKiBTZWNvbmRzICAgICAg
ICAgIFsiIDAgIiwgIiA2MCAiXSAqLyINCj4gLS5CUiAiICAgIGludCAgdG1fbWluOyIgIiAg
ICAvKiBNaW51dGVzICAgICAgICAgIFsiIDAgIiwgIiA1OSAiXSAqLyINCj4gLS5CUiAiICAg
IGludCAgdG1faG91cjsiICIgICAvKiBIb3VyICAgICAgICAgICAgIFsiIDAgIiwgIiAyMyAi
XSAqLyINCj4gLS5CUiAiICAgIGludCAgdG1fbWRheTsiICIgICAvKiBEYXkgb2YgdGhlIG1v
bnRoIFsiIDEgIiwgIiAzMSAiXSAqLyINCj4gLS5CUiAiICAgIGludCAgdG1fbW9uOyIgIiAg
ICAvKiBNb250aCAgICAgICAgICAgIFsiIDAgIiwgIiAxMSAiXSAgKEphbnVhcnkgPSAiIDAg
IikgKi8iDQo+IC0uQlIgIiAgICBpbnQgIHRtX3llYXI7IiAiICAgLyogWWVhciBtaW51cyAi
IDE5MDAgIiAqLyINCj4gLS5CUiAiICAgIGludCAgdG1fd2RheTsiIFwNCj4gKy5CUiAiICAg
IGludCAgICAgICAgIHRtX3NlYzsiICIgICAgLyogU2Vjb25kcyAgICAgICAgICBbIiAwICIs
ICIgNjAgIl0gKi8iDQo+ICsuQlIgIiAgICBpbnQgICAgICAgICB0bV9taW47IiAiICAgIC8q
IE1pbnV0ZXMgICAgICAgICAgWyIgMCAiLCAiIDU5ICJdICovIg0KPiArLkJSICIgICAgaW50
ICAgICAgICAgdG1faG91cjsiICIgICAvKiBIb3VyICAgICAgICAgICAgIFsiIDAgIiwgIiAy
MyAiXSAqLyINCj4gKy5CUiAiICAgIGludCAgICAgICAgIHRtX21kYXk7IiAiICAgLyogRGF5
IG9mIHRoZSBtb250aCBbIiAxICIsICIgMzEgIl0gKi8iDQo+ICsuQlIgIiAgICBpbnQgICAg
ICAgICB0bV9tb247IiAiICAgIC8qIE1vbnRoICAgICAgICAgICAgWyIgMCAiLCAiIDExICJd
ICAoSmFudWFyeSA9ICIgMCAiKSAqLyINCj4gKy5CUiAiICAgIGludCAgICAgICAgIHRtX3ll
YXI7IiAiICAgLyogWWVhciBtaW51cyAiIDE5MDAgIiAqLyINCj4gKy5CUiAiICAgIGludCAg
ICAgICAgIHRtX3dkYXk7IiBcDQo+ICAgIiAgIC8qIERheSBvZiB0aGUgd2VlayAgWyIgMCAi
LCAiIDYgIl0gICAoU3VuZGF5ID0gIiAwICIpICovIg0KPiAtLkJSICIgICAgaW50ICB0bV95
ZGF5OyIgXA0KPiArLkJSICIgICAgaW50ICAgICAgICAgdG1feWRheTsiIFwNCj4gICAiICAg
LyogRGF5IG9mIHRoZSB5ZWFyICBbIiAwICIsICIgMzY1ICJdIChKYW4vMDEgPSAiIDAgIikg
Ki8iDQo+IC0uQlIgIiAgICBpbnQgIHRtX2lzZHN0OyIgIiAgLyogRGF5bGlnaHQgc2F2aW5n
cyBmbGFnICovIg0KPiArLkJSICIgICAgaW50ICAgICAgICAgdG1faXNkc3Q7IiAiICAvKiBE
YXlsaWdodCBzYXZpbmdzIGZsYWcgKi8iDQo+ICAgLkIgfTsNCj4gICAuZmkNCj4gICAuU0gg
REVTQ1JJUFRJT04NCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------9U1PcL7COfLpy0N6gWua6ff0--

--------------AIXh3lKEpzXqf7XcbAQysqE7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLW1M0ACgkQnowa+77/
2zKIgxAAg6NGpX83j+ef+P02infrW24mAE9EJ4WTCCmK4ONsdxxWxg2nFFu/IPk0
6W0JCRIBoMpIJxY/Ump6DoeekY57yvMEE6pNyR70RvbN5euORtKWf7MQiKZr7z1G
ufl3z6ZMCFZFnau7T4usu4m7NGAfFfvappLGS7HHKnWQa1mCW2H0hwm+WHwxWPB0
ejrGDZVUcxsEfzzS/9rxdZ/1wuG5iLzT5kdE35a+p/IbKzwPdSP1qtBJ2PHtiIUp
1K7tnD15WUdRGKSSn826++Q8ZFjj2ogJCkSMzq6Ty9eAAMVU2ajoyDz2DfAEEBq7
VPdwoBgPyWXaAHEYMO88aTRFEFBT6mmReqQBL4eXwiucn1NAPV5Dmgp+HJh3Kykc
6ObwwTypzDtd7wx8TXAPcxWtFE/rSz3mTUcB1gt457hz52nURGAuoHkq0J5AkLIm
exYd7L6DBt5KuiWfLRlqczsx0iHNg0nOGvWsbhnXPo70ko0FuPbgGQjuplsPzgrn
x9vJxlF93+pR1vzneCDCro/GuyYh1nGXHlxPwSwUeys16fS5E0+bL0gbmeSYcnCY
H0/zG3VHA5WxzX+F5oT5cvPcK+MvVgvAWGf06n+qoa9Kpr331UMqc/Mf54uNEJiU
BH3GFdzCXm78GNxoZcgq+ABvOECDW3iDqm6R0Jxv25F0k9O3HBU=
=4GBX
-----END PGP SIGNATURE-----

--------------AIXh3lKEpzXqf7XcbAQysqE7--
