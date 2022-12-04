Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81567641CED
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 13:36:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbiLDMge (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 07:36:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229960AbiLDMga (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 07:36:30 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66B6815716
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 04:36:29 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id m14so14773596wrh.7
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 04:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZTQSJJMSmkgC1RhjZgoZG3+Alty9eD4mb1xMRZ1zUsE=;
        b=MHMimp3acL3LVlFsiME1F1W45dWAVqCtMWzm5SDaE2+jKCKfJaq08LtS1waxlL33Cr
         7WV+V8gKQSqhVj+e1uM6wifSrwl2WQvHIF53beDB0U3nVh4V0mScuEdtDhSyTK0hbKwv
         nYSb+WOqfPq4D9r5sgQV6RI1ZRNzDvHqt3krHjnbIP3JsPqxAAy1pIWwg2TansLEPosg
         XfxEUtZg18QWEAHS+NG832HgNB5sWQ8qqTpUAryVSKLWLd3zk+PFN6IxK05ubuWGpNDH
         YbNZHgD5DYjT2xOgiEWBBPohXEmBUqwqmibmYIyVz42VLW3Sm5hxrUsZOOLxXcK57FFY
         g7zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZTQSJJMSmkgC1RhjZgoZG3+Alty9eD4mb1xMRZ1zUsE=;
        b=3Atlj5Kqu1R4mAiSNgsHo116tlmxznMFh9RMAhmPpgXBtCQrZh7+3nRJSxg8tHHeJ4
         eNkSO8bj4HCnJKi+yNy5dR7IVhRKSmX2lqW6frUMnplIlavU5ddk50cSrIXK4M7H+Mj5
         ul5xXomLMNsbhSQon3tPsLkqDIionxHFfSStrycCV1TJ+hTVLYwOXokgrndIbvXecXaO
         KQV0vbf7rQUaAo7LIE+vmYnXnuU6DwYoDV/vwsmJHg3WLN/Olrs9p25NuOI2TXzNsKcX
         VYErIJLqrAmGM+YEkNgZzkRgmhPiR/jqY2b8tVTObdeTZ8SUQVxlJ7PDBbR5fnzoZ9OZ
         ciKA==
X-Gm-Message-State: ANoB5pmGex/8bqxGI263vIyNdGQZ3lljjFLjLpAB4zvIZfzRQSg0tOSe
        GAf59x9+Ts4kaMWd5kDInLc=
X-Google-Smtp-Source: AA0mqf63XWWRpER5xAAE88yRtKI042DRA5isEUfn3V7Gq6MYVmwpM9LAgTTlPmmeHbArsbNUSkZWxg==
X-Received: by 2002:a5d:66cc:0:b0:242:4d70:4eef with SMTP id k12-20020a5d66cc000000b002424d704eefmr4025017wrw.136.1670157387973;
        Sun, 04 Dec 2022 04:36:27 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y3-20020adff143000000b0022eafed36ebsm11870684wro.73.2022.12.04.04.36.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 04:36:27 -0800 (PST)
Message-ID: <07c7d14f-450e-80d4-1351-2b531c86716f@gmail.com>
Date:   Sun, 4 Dec 2022 13:36:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page network_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090713.GA539@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090713.GA539@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BVs2zUHqZ0XwLirv0MMXpz1M"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------BVs2zUHqZ0XwLirv0MMXpz1M
Content-Type: multipart/mixed; boundary="------------gClJpN4KYpMEyDJ2ZQl2PqQ5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <07c7d14f-450e-80d4-1351-2b531c86716f@gmail.com>
Subject: Re: Issue in man page network_namespaces.7
References: <20221204090713.GA539@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090713.GA539@Debian-50-lenny-64-minimal>

--------------gClJpN4KYpMEyDJ2ZQl2PqQ5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6DQo+IFdpdGhv
dXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiANCj4gSXNzdWU6
ICAgIHRoZSBwYXJlbnQgIOKGkiB0aGUgbmFtZXNwYWNlIG9mIHRoZSBwYXJlbnQNCj4gDQo+
ICJBIHBoeXNpY2FsIG5ldHdvcmsgZGV2aWNlIGNhbiBsaXZlIGluIGV4YWN0bHkgb25lIG5l
dHdvcmsgbmFtZXNwYWNlLiAgV2hlbiBhIg0KPiAibmV0d29yayBuYW1lc3BhY2UgaXMgZnJl
ZWQgKGkuZS4sIHdoZW4gdGhlIGxhc3QgcHJvY2VzcyBpbiB0aGUgbmFtZXNwYWNlIg0KPiAi
dGVybWluYXRlcyksIGl0cyBwaHlzaWNhbCBuZXR3b3JrIGRldmljZXMgYXJlIG1vdmVkIGJh
Y2sgdG8gdGhlIGluaXRpYWwiDQo+ICJuZXR3b3JrIG5hbWVzcGFjZSAobm90IHRvIHRoZSBw
YXJlbnQgb2YgdGhlIHByb2Nlc3MpLiINCg0KRml4ZWQuICBUaGFua3MuDQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------gClJpN4KYpMEyDJ2ZQl2PqQ5--

--------------BVs2zUHqZ0XwLirv0MMXpz1M
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOMlEoACgkQnowa+77/
2zI6fBAAmrY/Q8soYKR9fsf+WjZp3OaBevDoj8MSg7duvOWzTkWePkRdknSqmNUS
tv/RNRkdIZGtpMd8JKR1Hotyunr/4ONJQhcbRNYk96chiIanTPP/4SgZTtO8T6m0
idQ4X+Pl0VpaEUt9sPMrhJPkpg7G+3mCBN1oS2OLC33ytauto7a8aTdz3McD5mc2
EhO+cDKNX5E5Ixpgphx5TIOVuGcXvFtZ4yGoVwqEPYAUxxElKwq4ksPpwt/GTY6d
0xc8H6drbw9UZpqWcGzORw89cja0sXY4UmSXx19V6NsAwfd5ORTxyWLwmef40Oj0
xVBMin46a0BWsjm0fCKcAbzLRQ2aVsY1S50q+C9lHVxv+lYMU1NngXJ8NshMMAVN
wi0wAF7GniQycSOHPRQjJBtxwclsbCnvPEy03HjgFYOMDxVYCN1u3gVpxYkf8BNt
om36Whw7Lhwk5n28fU12orAmqz+iJs6OXfI8Jk0badOal4gVopSv8zOCjQu+6g5K
dwr3VPB2lAGbKbbMEADhTymhx89CuoquPubcE5T56cC8A34R6yx9BEGn52wQVs56
tnsvBaZJoUYaiWehvqpO3YT44QEtg/mx4WSTIYOAAA03unp552FDio7uIRmBxak4
+fpe81tn3vi9ocdcn0gLy2d5Hawp+hNiANJMVYZSxWapI+a28jc=
=wtTk
-----END PGP SIGNATURE-----

--------------BVs2zUHqZ0XwLirv0MMXpz1M--
