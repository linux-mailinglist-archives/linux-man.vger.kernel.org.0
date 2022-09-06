Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66F355AE65C
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 13:19:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239106AbiIFLTt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 07:19:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234197AbiIFLTs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 07:19:48 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37465AE4D
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 04:19:47 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id t14so7649054wrx.8
        for <linux-man@vger.kernel.org>; Tue, 06 Sep 2022 04:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=doQzBBhXNy8nYGUlnXnN5/yHLTxpJtBPS968gKNfoyw=;
        b=dfwqqEjsjYF7aBGr8f5M20w4xP1pWJALoEBv84tX3mICTmOUQ+UVk/FXCbZPvLMvid
         hhV0YrmQqifM3EWL0xjCl/5OEz4+kIBcaln5kaGC1WQB85aSTTyXG5esS3KZ4oe/hPK8
         i+kdeObmPb6RFCBN4otP7IiSUiDvPhTJ09jcBOcH92Sek8uSlJWAu2o1aTJjW5OSLHFf
         tEzDF6au0fEAY0mKstfMUYPeaTPdEl0ydPu+Dze0id7gdnCow7cJqfuhaTGPkQuigfJc
         UYuRw1dT7qSGeanZgs5CksqOpq+t9I4kX0BDpGa0eB8PNLfkY6jEA4Tt915fHrPmy6fl
         rtSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=doQzBBhXNy8nYGUlnXnN5/yHLTxpJtBPS968gKNfoyw=;
        b=xYSVLTkrIDFhlXmCgqeZQICXpELKHAWm8vE4pvvL3RVm0vYPxRV6FWypM+22qLHBJ/
         fa8fQayv47/E3CW3rL4HStXO+SM+5p77gd83YM54Ved4HDgB2ARoMKegmp5KFb2HeTjT
         hQqQl6S+EgH7vJSKHB073tCjh0gCqEZ3A/5+KhL7plMdEJnLb7ti2L8/8RSPMcen3ZDX
         STKPttprLe+6H8aPu7q76JhWLaytfzaWQQf12EuObaiv1wCURg7XfIfJ/yMgmOuj8tu3
         +E908R8eFdPubdc+Fu3nmw9yiLPPyrmIwaMPQmlJYPh8Z4Gru7H7AdTw3VdY4QUu/TNE
         dqOg==
X-Gm-Message-State: ACgBeo0Xsg1wFB3rJOtnAwKEqWw8//VGaMcl5FN6CeO/g1FkCCEk9Bco
        411ofNMTxBlUFvqqqlYkbic=
X-Google-Smtp-Source: AA6agR5vGX8pfHsEsRjdFu9uuhlEM6mp0f4rQdE2krpNfKiOEpXrKXDHe7X99Up4Iti9eofNuPunoA==
X-Received: by 2002:a05:6000:118e:b0:228:9373:70ae with SMTP id g14-20020a056000118e00b00228937370aemr4982070wrx.467.1662463185664;
        Tue, 06 Sep 2022 04:19:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o24-20020a1c7518000000b003a83ca67f73sm14518381wmc.3.2022.09.06.04.19.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 04:19:45 -0700 (PDT)
Message-ID: <f8f6d1ba-5820-d238-4627-446d715fcf6f@gmail.com>
Date:   Tue, 6 Sep 2022 13:19:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
Content-Language: en-US
To:     Petr Vorel <pvorel@suse.cz>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <YxcV4h+Xn7cd6+q2@pevik>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YxcV4h+Xn7cd6+q2@pevik>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------A9MDWFzc7LSm5kSO80UNo43z"
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------A9MDWFzc7LSm5kSO80UNo43z
Content-Type: multipart/mixed; boundary="------------TNcI6X6AD71pfFIibKUA30PX";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Petr Vorel <pvorel@suse.cz>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <f8f6d1ba-5820-d238-4627-446d715fcf6f@gmail.com>
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
References: <YxcV4h+Xn7cd6+q2@pevik>
In-Reply-To: <YxcV4h+Xn7cd6+q2@pevik>

--------------TNcI6X6AD71pfFIibKUA30PX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUGV0ciwNCg0KT24gOS82LzIyIDExOjQxLCBQZXRyIFZvcmVsIHdyb3RlOg0KPiBIaSBB
bGVqYW5kcm8sDQo+IA0KPiB5ZXN0ZXJkYXkgeW91IG1lcmdlZCB0aGlzIGNvbW1pdCAod2l0
aG91dCBzZW5kaW5nIGl0IHRvIE1MKToNCj4gNzBhYzFjNDc4ICgic3JjLm1rLCBBbGwgcGFn
ZXM6IE1vdmUgbWFuKiB0byBtYW4vIikNCj4gDQoNCkl0J3MgZ29vZCB0byBrbm93IHRoYXQg
c29tZW9uZSByZWFsaXplZCBpbW1lZGlhdGVseSBhZnRlciBteSBwYXRjaC4gIEkgDQp3YW50
ZWQgdG8ga25vdyBob3cgbXVjaCBpdCB3b3VsZCByZWFsbHkgaHVydCBvdGhlcnMnIGhhYml0
cywgYW5kIGEgDQpkaXNjdXNzaW9uIGFib3V0IGl0IHdvdWxkIHByb2JhYmx5IGhhdmUgYmVl
biB0b28gYXJ0aWZpY2lhbC4gIFRoYXQncyB3aHkgDQpJIGRpZCBpdCB3aXRob3V0IHByaW9y
IGRpc2N1c3Npb24uDQoNCj4gQWx0aG91Z2ggSSBhZ3JlZSB0aGF0IG51bWJlciBvZiBtYW4q
IGlzIHF1aXRlIGhpZ2ggYW5kIHNpbmdsZSBtYW4gZGlyZWN0b3J5DQo+IGxvb2tzIG5pY2Vy
LCBmcm9tIHByYWN0aWNhbCByZWFzb25zIEknZCBwcmVmZXIgdG8gcmV2ZXJ0IHRoaXMgY29t
bWl0Lg0KPiBCZWNhdXNlIHNhdmluZyBvbmUgZXh0cmEgY2QgaXMgSU1ITyBtb3JlIGltcG9y
dGFudC4NCg0KSSByYXJlbHkgY2QuICBJIGVkaXQgcGFnZXMgZnJvbSB0aGUgcm9vdCBvZiB0
aGUgcmVwbyB3aXRoIChpbiBteSANCmV4YW1wbGUsIEknbGwgcHJldGVuZCB0byBlZGl0IG1l
bWJhcnJpZXIoMikpOg0KDQoocHJldmlvdXMgdG8gc3Vic2VjdGlvbnMpOg0KdmkgbVtUQUJd
MltUQUJdbWVtYltUQUJdDQoNCihhZnRlciBzdWJzZWN0aW9ucyB3ZXJlIGludHJvZHVjZWQs
IGJ1dCBiZWZvcmUgdGhpcyBjaGFuZ2UpOg0KdmkgbVtUQUJdMi9tZW1iW1RBQl0NCg0KKGFm
dGVyIHRoaXMgcGF0Y2gpOg0KdmkgbVtUQUJdbVtUQUJdMi9tZW1iW1RBQl0NCg0KDQpJIGFn
cmVlIGl0J3MgdHdvIG1vcmUga2V5c3Ryb2tlcywgYW5kIGl0IHRvb2sgbWUgc28gbG9uZyB0
byBkZWNpZGUgdG8gDQpjaGFuZ2UgaXQgYmVjYXVzZSB0d28ga2V5c3Ryb2tlcyBhbGwgdGhl
IHRpbWUgYXJlIG5vdCB0aGUgbW9zdCBmcmllbmRseSANCnRoaW5nIGluIHRoZSB3b3JsZCwg
YnV0IEkgdGhpbmsgSSBjb3VsZCBsaXZlIHdpdGggdGhlbS4NCg0KRG8geW91IHN0aWxsIHRo
aW5rIEkgc2hvdWxkIHJldmVydCBpdD8NCg0KSSBndWVzcyBJJ2xsIHJlY2VpdmUgYSBsb3Qg
bW9yZSBlbWFpbHMgbGlrZSB0aGF0IGluIHRoZSBmb2xsb3dpbmcgZGF5cywgDQpzbyBJJ2xs
IHdhaXQgYSBsaXR0bGUgYml0IG1vcmUgYmVmb3JlIGNvbnNpZGVyaW5nIHJldmVydGluZyBp
dCwgYnV0IA0KeWVhaCwgSSBtYXkgZG8gaXQ7IEknbSBzdGlsbCB1bnN1cmUgYWJvdXQgd2hh
dCB0byBkby4NCg0KS2luZCByZWdhcmRzLA0KDQpBbGV4DQoNCg0KLS0gDQpBbGVqYW5kcm8g
Q29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------TNcI6X6AD71pfFIibKUA30PX--

--------------A9MDWFzc7LSm5kSO80UNo43z
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMXLMgACgkQnowa+77/
2zKyLA//bYIl+IfugeympDKSYeSlzxwod7IKtbxIBWV4moBWIVxl3LfvxFmZr8DZ
7J+TZvyCesToROstoxNB0ydtg3Eo2Eby9nFqaQxmOr63stZLulPqiG1gjlZXeslv
iagffxWCS4c95Eo+QL1Cha2Zf6EDE7SdlUMKqxr940SlzeN6yQC8oViJlI7bo9yu
EotDAoV7COcYlUWcA5HSvZHCLBfA9NAA1biM5o0QhnRilpgwuIONgIKanMnxKgt+
a+DMj+4MqnhJFwTsV79q8169ti8i/Ym6rYasxcxPv9OpQ74+z7H9t9lD9k8TMMMP
VYxx3YhaABFH79scyky804Aft5XSiv6LUhU1HVPqFYAyVEa3Hhab0Iy+CT+KHBgY
/THTgYtXhZuo+xUOsnhcWP5sXshVCCQjAISyhRSST3TtZJoWSXKgPRet7iIQna2y
sy5ynfCWXRFzP5VzgMo1sXl7vebmy+UwE8rdG/z3LAU0rc8t1Oe8n5kx2SePB/3+
+D8GL7HpdD3qLf5lexmm0pBjlXuClr1wpMkXnr5BjMqb/bI/D5SqupDYMMq7pZ3+
AgUJIagZM32EQJvJLR3cJe1XhrqmlIADbXjRMCKPrJ/dbLFzzpoeWc3BDX7NbOFY
3BkTKAuGwkk9FPfvysaOvO7Xg5eJ64+OzvDKpISMMXjvzKZfExY=
=PIg9
-----END PGP SIGNATURE-----

--------------A9MDWFzc7LSm5kSO80UNo43z--
