Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D275D65FFED
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 13:07:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229478AbjAFMHH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 07:07:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjAFMHH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 07:07:07 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EC28718A7
        for <linux-man@vger.kernel.org>; Fri,  6 Jan 2023 04:07:06 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id z16so1100201wrw.1
        for <linux-man@vger.kernel.org>; Fri, 06 Jan 2023 04:07:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rTzr8VJFLMFeR4FYEIwBsFKO3rQduLUvj0ApCVuhL+k=;
        b=Ozw3wZDg+EHhucJv1Rk9roFN+9rj3H5cv8Fx0MsJzSgQjhKM+fWjnrdidJizQRgEQE
         9Nuv0elDPHXiy86dYiQxWUHChA/SAxQ5zakYpdnbOfPipyPmAyXvQOBIuUwCO2cwwHQH
         ZThMpzCIE5O1GQu1WrP6rZ0YsOThnMgstFlJtH8gAwqWf5JQybMLihG+ZNIg5+S3C8Ru
         gbTbPXAOPVfJUvkn8ngTAFT3lAkYyBXLqbLDB7iGVrLonEZccyAkklH8s7BL0NLFjy+f
         6uFGSyRB8f9wWALbARWrwS9/EqbuVeekCHp7UPmcym4LtYfrCo+ChJnqGVRns1cL+PHw
         UBNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rTzr8VJFLMFeR4FYEIwBsFKO3rQduLUvj0ApCVuhL+k=;
        b=6s8qi1UuQdO0bNC6LTpyLMZzte2iL2fppGQXR88ytZbSJhPXlkHH87UxH7JJCp++Ut
         C7BGESpqntXelpndYOe4E61vWnH9Joc1QHasF5a5ExEBJVxxkeUTigr88kLTDo+/UEuM
         Nvib5Lo2HXImmmJFsj5+OdsS3xtW+R/UMXHjdV8vhPITHcJSxcOjqCWGnZY76TZJbqvE
         gcBT8NIydazEDlf4A442IggnhZJO3BVum4SfL35cx/VgUvrIFp4z6N1dN1d4bwz9trIQ
         XCg5wpZIFjsq9bQSPd4CnidKnUAqKaeSMNP8tAp66rQHpfhFTYiZOoSm2oNkLiRh5470
         ljOA==
X-Gm-Message-State: AFqh2krZ/imZwCA1OJlt48/opUAZgYby91vdu79WOiiYs0iEGBnMlNrO
        MSzb76i6gAF5W3yq3MYKGAepqiw81vM=
X-Google-Smtp-Source: AMrXdXukzaTARlvUaQTZU+2sVlUYaxiRtWw7PQf2qr77P8DDkZXFd9ZKePHQyJoss/prA00c92YKtA==
X-Received: by 2002:adf:eb0e:0:b0:26b:bea1:f6d0 with SMTP id s14-20020adfeb0e000000b0026bbea1f6d0mr31422333wrn.56.1673006824875;
        Fri, 06 Jan 2023 04:07:04 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r13-20020a5d694d000000b0022cdeba3f83sm975682wrw.84.2023.01.06.04.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 04:07:04 -0800 (PST)
Message-ID: <96a187c4-4d5c-3719-2c51-6ac43bb33ba1@gmail.com>
Date:   Fri, 6 Jan 2023 13:06:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 07/13] libc.7: ffix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
 <7aa64afd-86ea-fa04-9e97-98b60ff8b264@gmail.com>
 <20230106001719.imokpcfcqbuuuxka@illithid>
 <1a37e727-f673-c3bf-2524-823100858b2e@gmail.com>
 <20230106071642.ukwraci3kp5sa74r@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230106071642.ukwraci3kp5sa74r@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ATBSBwGwFKIs6eplrVAB0f75"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ATBSBwGwFKIs6eplrVAB0f75
Content-Type: multipart/mixed; boundary="------------YAivfa0jcqMJb10RmxABsqSX";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <96a187c4-4d5c-3719-2c51-6ac43bb33ba1@gmail.com>
Subject: Re: [PATCH v3 07/13] libc.7: ffix
References: <20230105225303.bpo7ot4zcsthw2gv@illithid>
 <7aa64afd-86ea-fa04-9e97-98b60ff8b264@gmail.com>
 <20230106001719.imokpcfcqbuuuxka@illithid>
 <1a37e727-f673-c3bf-2524-823100858b2e@gmail.com>
 <20230106071642.ukwraci3kp5sa74r@illithid>
In-Reply-To: <20230106071642.ukwraci3kp5sa74r@illithid>

--------------YAivfa0jcqMJb10RmxABsqSX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS82LzIzIDA4OjE2LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPj4gV2hlcmUgZGlkIHRoaXMgaWRlYSBvZiBzZXBhcmF0aW5nIGl0IGluIHN5bm9w
c2VzIGNvbWUgZnJvbT8gTWF5YmUNCj4+IGxvZ2ljIHRoaW5raW5nLCBzdWNoIGFzIHBsYWNp
bmcgdGhlIHBlcmlvZCBvdXRzaWRlIG9mIHF1b3Rlcy4uLg0KPiANCj4gTXkgX2d1ZXNzXyBh
cyB0byB0aGUgX3JlYXNvbl8gaXMgYXMgSSBzYWlkIGVhcmxpZXItLXRvIHJlaW5mb3JjZSB0
aGUNCj4gaWRlYSB0aGF0IHRoZSBvcHRpb25hbCBhcmd1bWVudHMgYXJlIHdoaXRlc3BhY2Ut
c2VwYXJhdGVkLiAgQXMgZm9yIHdoZXJlDQo+IGl0IGNhbWUgZnJvbSwgdGhlIHN0cm9uZ2Vz
dCBoaXN0b3JpY2FsIGNsYWltIEkgY2FuIHJlYWRpbHkgbWFrZSBpcyB0aGF0DQo+IGl0IGFw
cGVhcnMgaW4gdGhlIGVhcmxpZXN0IFVuaXggbWFuIHBhZ2VzIGZvciB3aGljaCB3ZSBoYXZl
IGhhcmQgY29weS4NCj4gDQo+IFNvIHRoYXQgd291bGQgYmUgdGhlIGFyKEkpIHBhZ2UgaW4g
dGhlIChGaXJzdCBFZGl0aW9uKSBVbml4IFByb2dyYW1tZXIncw0KPiBNYW51YWwsIGRhdGVk
IDMgTm92ZW1iZXIgMTk3MS4gIChJbWFnZSBhdHRhY2hlZC4pDQoNCkludGVyZXN0aW5nLg0K
DQo+IA0KPj4gU28sIEkgZ3Vlc3MgSSdsbCBwaWNrIHRoYXQgcGF0Y2guICBJJ2xsIHRlbGwg
eW91IGlmIEkgZG8uDQo+IA0KPiBXaGVuIHlvdSd2ZSByZXBvcnRlZCBvbmUgYXMgYXBwbGll
ZCwgc2hvdWxkIEkgZHJvcCBpdCBmcm9tIG15IGZ1cnRoZXINCj4gcmV2aXNpb25zIG9mIHRo
ZSBwYXRjaCBncm91cD8NCg0KWWVzLiAgV2hlbiBJIHJlcG9ydCB0aGF0IEkgYXBwbGllZCBh
IHBhdGNoLCBpdCBtZWFucyB0aGF0IEkgYXBwbGllZCBpdCB0byBteSANCm1haW4gYnJhbmNo
LCBhbmQgdGhhdCBpdCB3aWxsIGltbWluZW50bHkgYmUgcHVzaGVkIHRvIHRoZSBtYXN0ZXIg
YnJhbmNoIGF0IA0Ka2VybmVsLm9yZy4gIFNvbWUgdGltZXMgaXQgaXMgaW1tZWRpYXRlLCBh
bmQgc29tZSB0aW1lcyBJIGRlbGF5IGl0IGZvciBhIGZldyANCmhvdXJzIG9yIGRheXMsIGlm
IEkgaGF2ZSBwYXRjaGVzIHRoYXQgY29uY2VybiBtZSBpbiB0aGUgYnJhbmNoLg0KDQpJIHB1
c2hlZCBteSBtYWluIGJyYW5jaCB0byBteSBvd24gcmVtb3RlIHNvIHRoYXQgeW91IGNhbiBy
ZWJhc2Ugb24gdG9wIG9mIHRoYXQgDQooaWYgSSBsYXRlciByZW1vdmUgdGhlIGJ6ZXJvIHBh
dGNoIGZyb20gdGhlcmUsIGl0IHNob3VsZG4ndCBjcmVhdGUgYW55IGNvbmZsaWN0cyANCnRv
IHlvdXIgcGF0Y2hlcykuDQoNCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzL3Ny
Yy9hbHgvbGludXgvbWFuLXBhZ2VzL21hbi1wYWdlcy5naXQvbG9nLz4NCjxnaXQ6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvc3JjL2FseC9saW51eC9tYW4tcGFnZXMvbWFuLXBhZ2Vz
LmdpdD4NCg0KPiANCj4gUmVnYXJkcywNCj4gQnJhbmRlbg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------YAivfa0jcqMJb10RmxABsqSX--

--------------ATBSBwGwFKIs6eplrVAB0f75
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO4DuAACgkQnowa+77/
2zLalw/9G9ND8vF2qXL5u5su7YNvP1XxClKaHcLSBJeRFC8NEfDTnBDuA234Hi9W
LQDEVKL2fGQnBlqo47mL013SnFcDNfZzmDhug1LODWEaKhy45I3n85fvz4kmnrWJ
Syc+Ja1pr70skvyRiKVIdThjUNMJW6j91MUn8r30WuvpZjr029plh/L9+Y+2VxRd
G8DH3S4bI2qY15aEvVj9n12EV/a+GOH/XRwMmeEMMcGMqXPw3xbNgjXSmLlEkSyo
iQ5JyqifghDq8CdsCR+AJEmxiEKJ80/gaiUFxQMfzfra9hyr4BkCyZmM5FHfFpkH
0Rhnhr6erlKuL2jSyhxiJw/nnqt2xZcGSTs8OJkM1ZXHP+JkvGLjhTvUgSte3Alo
ilGekYkL3SHaiVrGm63LAmXt2IqVZerMHK/Y2O3eUWCi1z7nwaM1kUEPey9BBWxM
8/16mS40+uzfGRwNWQkhREoz9Ihn5GVhrirFmoRAUKhMinKw8iBJOAtjzBNomWTP
x9k5hDe3mACFHFaHDh+YBYWzTEBlj1WUqT0LAGR5MTDRch46OuYsETokpjul28ZG
vghNILEPlm6//+zniJolgpm1J5JA7XSmdtcfx5GCteSln5gmmxN8wBBqrdBTYi4v
I737p6GZYNN6W43xtY8CJLsDSaGqhfxQLcPe9gmIEbtOMxr/uGQ=
=KqWz
-----END PGP SIGNATURE-----

--------------ATBSBwGwFKIs6eplrVAB0f75--
