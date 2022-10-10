Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1BED5FA607
	for <lists+linux-man@lfdr.de>; Mon, 10 Oct 2022 22:20:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230082AbiJJUUK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Oct 2022 16:20:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230085AbiJJUTC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Oct 2022 16:19:02 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E37B7B2BA
        for <linux-man@vger.kernel.org>; Mon, 10 Oct 2022 13:16:41 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id a10so18535145wrm.12
        for <linux-man@vger.kernel.org>; Mon, 10 Oct 2022 13:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UpJaLxeKC8qb21lSqgj8/r0QjWIlTQwKG5z7iKQlQ1c=;
        b=VZW1v2XOS+gXEqHbyKGKjxpLYztPnkWS+yY4un+T3CCKQyHxQjsep1slWRxTXrVnWG
         qrwZjVG+YghLM8b28dKEoo3L20/1/8stu/ojrvSDXW2WDUf1TIIN+OMd1F9KWavryxEl
         pAmF29oUmeDW/R8c3WEA3Be6sRePgU/V881Xk3Eqn5a8bufzSBEZXYsjmAl+jJnYknJA
         WrrNLMF+4HzjHZAHh5GPnDM+rUR9xw4t0deLkaj+4A8l5xbgMAnSHhhFrG6O3MIQR2rg
         SgBM95q/W+UyDdpTyb6LWHyyiv+rj0tbJeLwrLmz2tsfXJbTSBUuDfMZKfhIkJ2SK380
         ExpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UpJaLxeKC8qb21lSqgj8/r0QjWIlTQwKG5z7iKQlQ1c=;
        b=KI3RdLZ6J2cMTMCBc0IW5ovylIuzR76H+fIaOy1g573ckx1UPNHFxKFTTeZy5Wyy0j
         +uJWOK562Sqr+6ySLjVyORumm7v++wNH+HAjALsmksSc6S9WWitFRo/ZlJwZQ6V4DXuB
         rp2ue8rnaEtaoAck2rNbKjj53ZQsCFYsn6q6yqs7JD/Gn2e0+hk1Z0P86PrORUBo4p/F
         kriLikh4CIPoYrA65hxoBHPZVdMahC7WQCoGB96UZpvU4CUSEgmUObO9LAJPnKc7AKiV
         Iz1AJ/AINjGmXp7PQdikFq/2Z003takF3LfuPp1ZE8IMXgncl2Sn49sRIeMZdzKjiZWv
         JzVQ==
X-Gm-Message-State: ACrzQf2lebG/7H6wfnr4PRTdMyTeVsmn6l55fPEsNmHxQ33pmA4/mw1m
        GTwEcNGMA/ShA2FZX5WmJKk=
X-Google-Smtp-Source: AMsMyM7Srw3ftSHvXmuhI2KXe/1/p/NEzcf5xiW+TB9Y83YWPxsRA5lMkkxTK5Fy/YT7WZnZpxJ1wA==
X-Received: by 2002:a5d:64e2:0:b0:22e:7060:b4a7 with SMTP id g2-20020a5d64e2000000b0022e7060b4a7mr12125927wri.129.1665432999973;
        Mon, 10 Oct 2022 13:16:39 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j10-20020a05600c190a00b003c6b7f5567csm242983wmq.0.2022.10.10.13.16.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Oct 2022 13:16:39 -0700 (PDT)
Message-ID: <46c4f13c-c043-8c65-3417-61a51c97d60b@gmail.com>
Date:   Mon, 10 Oct 2022 22:16:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2] fanotify_mark.2: Document FAN_MARK_IGNORE
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
        linux-man@vger.kernel.org
References: <20221007061328.1326041-1-amir73il@gmail.com>
 <96aeae1d-ee98-4bc4-6e82-60f902bdcf96@gmail.com>
 <CAOQ4uxgqdhMgYZT3-6q+_=P_9Y7no9FopQ9nq2acPhSuEss34Q@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAOQ4uxgqdhMgYZT3-6q+_=P_9Y7no9FopQ9nq2acPhSuEss34Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PZnsY4adtIMYejU0C9tMI0QJ"
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------PZnsY4adtIMYejU0C9tMI0QJ
Content-Type: multipart/mixed; boundary="------------QWzfwAstLjDgbks1xQ0tBcn5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Jan Kara <jack@suse.cz>, Matthew Bobrowski <repnop@google.com>,
 linux-man@vger.kernel.org
Message-ID: <46c4f13c-c043-8c65-3417-61a51c97d60b@gmail.com>
Subject: Re: [PATCH v2] fanotify_mark.2: Document FAN_MARK_IGNORE
References: <20221007061328.1326041-1-amir73il@gmail.com>
 <96aeae1d-ee98-4bc4-6e82-60f902bdcf96@gmail.com>
 <CAOQ4uxgqdhMgYZT3-6q+_=P_9Y7no9FopQ9nq2acPhSuEss34Q@mail.gmail.com>
In-Reply-To: <CAOQ4uxgqdhMgYZT3-6q+_=P_9Y7no9FopQ9nq2acPhSuEss34Q@mail.gmail.com>

--------------QWzfwAstLjDgbks1xQ0tBcn5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW1pciwNCg0KT24gMTAvMTAvMjIgMjA6MDIsIEFtaXIgR29sZHN0ZWluIHdyb3RlOg0K
DQo+Pj4gKy5SQiAoIEZBTl9NQVJLX0lHTk9SRSB8IEZBTl9NQVJLX0lHTk9SRURfU1VSVl9N
T0RJRlkgKS4NCj4+DQo+PiBJJ20gbm90IHN1cmUgaWYgSSdkIGZvcm1hdCB0aGlzIGFzIGNv
ZGUgKGl0YWxpY3MpIHJpZ2h0PywNCj4+IHJhdGhlciB0aGFuIHNlcGFyYXRlIGNvbnN0YW50
IG5hbWVzLg0KPj4NCj4+IFBsZWFzZSBjaGVjayB0aGUgYmVsb3cgcGFyYWdyYXBocyBmcm9t
IG1hbi1wYWdlcyg3KSwNCj4+IGFuZCBJJ2xsIGxlYXZlIHRoZSBkZWNpc3Npb24gdXAgdG8g
eW91Lg0KPj4NCj4gDQo+IEkga2luZCBvZiBsaWtlIGl0IHRoZSB3YXkgaXQgaXMsIHdoaWNo
IGlzIGFsc28gY29uc2lzdGVudCB3aXRoIHNpbWlsYXINCj4gY29uc3RydWN0cyBpbiBmYW5v
dGlmeV9pbml0LjIuDQo+IA0KPiBXb3VsZCB5b3UgbGlrZSBtZSB0byBwb3N0IHYzIGZvciB0
aGUgMiBtaW5vciBmb3JtYXR0aW5nIGZpeGVzPw0KPiBPciB3aWxsIHlvdSBtYWtlIHRoZW0g
b24gY29tbWl0Pw0KDQpJIGNhbiBhbWVuZCBpdDsgZG9uJ3Qgd29ycnkuICBMZXQgbWUgcHJl
cGFyZSB0aGUgcmVwbyBhZnRlciB0aGUgcmVsZWFzZSwgDQphbmQgSSdsbCBhcHBseSB0aGlz
IHBhdGNoLiAgSWYgSSBkb24ndCBpbiBhIGZldyBkYXlzLCBwbGVhc2UgcGluZyBtZS4NCg0K
Q2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IFRoYW5rcywNCj4gQW1pci4NCg0KLS0gDQo8aHR0
cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------QWzfwAstLjDgbks1xQ0tBcn5--

--------------PZnsY4adtIMYejU0C9tMI0QJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNEfZ8ACgkQnowa+77/
2zLm/Q//TeHBpJgYsEetLs+kxrV/XQQtiRNJN9MDj+CooSilK+KMAGvCcO+HuwpY
Dcy4i1pIPDDgnk9qR3e185cYJVBIkyfXldoHXpmHmTxy6tehghLzLkenimoUvqAG
zZYJiSXcXOpXWsn3IUw7syZ7ksOji8kJYyomCB3Wd05gbxCaHOcJZ+xi+Gj569Ms
hbyXMQMmI6r1OPvBmmvC1lhbUwOOACWhoOAD3HqGwVZFQ7wloGsiXcotOsbEtH/1
klc5anepIQI4N1lQaRdvGessQVB/DGvwEkZy2ji9m3+uTH6H0aLIlCJOZJf3kC1b
hxivrmb+LYWGVUCHkmxqzH+gpKKvVUMFgZNLcCsgYgOEY7cK3g1Va33xLhvFN2MD
T5CpGOSoHhAHHeE7EZ1bwAI+KXUdcd81be8RQ4SYefeYww8WygeUFtetLvf5qaeF
BsDN2OG8OYRKNg9WKQBRpaREEuOE3dLHDFb4mDLEW4Zf6Mp22gmg+uwdsW71rCMS
LHpmN4SKUJHKphphgDV28UPCBRUYyA1dvS4RRSCSX01xzZD5pBjtIXhoxRdVluMb
nwsLvMWF8rKVKpzMN2DjQYvkLkWSsHYIXTv0eofhhmzjRcVFd2usiIlEb8Ce4Yi5
PQG2CKqI83Hykm1IbXMY8eTzLbdSYC2l45V0IgwDsRY8foT8g8I=
=NFgX
-----END PGP SIGNATURE-----

--------------PZnsY4adtIMYejU0C9tMI0QJ--
