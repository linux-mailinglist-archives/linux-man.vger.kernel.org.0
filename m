Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29A1053EE3E
	for <lists+linux-man@lfdr.de>; Mon,  6 Jun 2022 20:59:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232068AbiFFS7i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jun 2022 14:59:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231641AbiFFS7f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jun 2022 14:59:35 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57CCF2EB68B
        for <linux-man@vger.kernel.org>; Mon,  6 Jun 2022 11:59:34 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id k16so21072939wrg.7
        for <linux-man@vger.kernel.org>; Mon, 06 Jun 2022 11:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=7Wym+HpEjbb0QigmHy9+mgzkGcxfYyFPEzMsIzuB2hk=;
        b=qThXeCaHI1qeOcwz7DuMQg8yyO01sVp5xzygFc9/XosVOXeWQe8RJctjZA/cHGRdpF
         bT3Pkaj5hb9BngA7bQgVvaH8OjKIgrlL2xjVJUqcg9gQYTew+vNccYsAZHpfj3fuw9HH
         OQS+EscWll/6kr4rLLboiBHsqUMzk0c+gYe59womP5UMhppu44VQuHt1rKRYySJxYJ97
         JEP5ng9bjo1B6hjlxssFFR6F3sVA+NREiIj0UR7WgNd61llNc9sieCBr9HBDDMIY4OZ6
         yqZ6JnKc7jaeZ5B+z7HUoxvX6l6aWcV8pHxmAcI2kdJJAJEk6IMm8mtLEi6o3BWsNTcD
         xWow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=7Wym+HpEjbb0QigmHy9+mgzkGcxfYyFPEzMsIzuB2hk=;
        b=FiCIoel3stMi4kOlZLPfea5lz+KrJBgvTb4zfwin/niMPdyYgT/nRkRit/gOeeuicL
         CMJdftD4vYBwMpTUgpGNZn+XoeqRtYTFDnWmDdUYRj5n7lC/JySdrO4ymEUJ9ZeCw6ey
         N1Oum2kTuYqRfWZQ4eZCp515aPfvRi4yLqDhkzM0gwt4KpiE37o8Pq6TNFJpasd3yns2
         PfKDhe03/3oYEtrE/DvG0jQVPGYk1o1FNChevHeWWhk96trVuHF6j5BHtvwb+OSp9bCV
         0zZB6RxRn3+FkUpHiz0yAhhRqCQJa0yfppamr7DmMt7f38qghlomr46xBGJARCvVCzqC
         vlJg==
X-Gm-Message-State: AOAM530pu0xXQlp8w4npOA9u98OS3EfuAkbBBYvcfJb18xHy4wBxITzY
        3oxWmt09HdiqYl5YOXzqeJHrJrcCr5w=
X-Google-Smtp-Source: ABdhPJxJaPEh24r2uTCcFzqZzXIiXbzudEK/joRLFpvm66BtqbOiPo6KgTD7qdPTfnbPAyjQRX/qTA==
X-Received: by 2002:a05:6000:2a2:b0:20f:d8ca:744d with SMTP id l2-20020a05600002a200b0020fd8ca744dmr23241180wry.354.1654541972915;
        Mon, 06 Jun 2022 11:59:32 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h7-20020a05600c350700b0039c3b05540fsm15246547wmq.27.2022.06.06.11.59.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 11:59:32 -0700 (PDT)
Message-ID: <e822f3f2-adad-ce03-712b-1b0f6a3edb31@gmail.com>
Date:   Mon, 6 Jun 2022 20:59:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: close_range.2: misleading what CLOSE_RANGE_UNSHARE unshares
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>,
        Christian Brauner <christian.brauner@ubuntu.com>
Cc:     linux-man@vger.kernel.org,
        "Joseph C. Sible" <josephcsible@gmail.com>
References: <CABpewhHabbxi=+h+pXbSBnwmbkpaZvCo5Vm3vujMg4UvxhtmkA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CABpewhHabbxi=+h+pXbSBnwmbkpaZvCo5Vm3vujMg4UvxhtmkA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1r0j3oNIsG87G01OVY900Y5p"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------1r0j3oNIsG87G01OVY900Y5p
Content-Type: multipart/mixed; boundary="------------vKSf704pj0bwpqmAGva3F4Nu";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stephen Kitt <steve@sk2.org>,
 Christian Brauner <christian.brauner@ubuntu.com>
Cc: linux-man@vger.kernel.org, "Joseph C. Sible" <josephcsible@gmail.com>
Message-ID: <e822f3f2-adad-ce03-712b-1b0f6a3edb31@gmail.com>
Subject: Re: close_range.2: misleading what CLOSE_RANGE_UNSHARE unshares
References: <CABpewhHabbxi=+h+pXbSBnwmbkpaZvCo5Vm3vujMg4UvxhtmkA@mail.gmail.com>
In-Reply-To: <CABpewhHabbxi=+h+pXbSBnwmbkpaZvCo5Vm3vujMg4UvxhtmkA@mail.gmail.com>

--------------vKSf704pj0bwpqmAGva3F4Nu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU3RlcGhlbiBhbmQgQ2hyaXN0aWFuIQ0KDQpPbiA2LzIvMjIgMDY6MjIsIEpvc2VwaCBD
LiBTaWJsZSB3cm90ZToNCj4gVGhlIERFU0NSSVBUSU9OIHNlY3Rpb24gb2YgY2xvc2VfcmFu
Z2UuMiBtYWtlcyBpdCBzb3VuZCBsaWtlDQo+IENMT1NFX1JBTkdFX1VOU0hBUkUgd2lsbCBv
bmx5IHVuc2hhcmUgdGhlIGZpbGUgZGVzY3JpcHRvcnMgdGhhdCB5b3UNCj4gc3BlY2lmaWVk
IGZvciBpdCB0byBjbG9zZSwgYnV0IHVuc2hhcmluZyBhY3R1YWxseSBvcGVyYXRlcyBhdCB0
aGUNCj4gZ3JhbnVsYXJpdHkgb2YgdGhlIGZpbGUgZGVzY3JpcHRvciB0YWJsZSwgc28gYW55
IEZEcyB0aGF0IHJlbWFpbmVkDQo+IG9wZW4gYXMgd2VsbCBhcyBhbnkgb3BlbmVkIGluIHRo
ZSBmdXR1cmUgd2lsbCBiZSB1bnNoYXJlZCB0b28uDQoNCkNvdWxkIHlvdSBwbGVhc2UgaGF2
ZSBhIGxvb2sgYXQgdGhpcyByZXBvcnQ/DQoNCg0KVGhhbmtzLA0KDQpBbGV4DQoNCi0tIA0K
QWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4N
Cg==

--------------vKSf704pj0bwpqmAGva3F4Nu--

--------------1r0j3oNIsG87G01OVY900Y5p
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKeTpIACgkQnowa+77/
2zJReg//ZIy9yXsiP2NtzkgrG2vCH9JvMOr6BtPcZQBeVQmJp6fAs1hR5ePkpHWV
v7Dbbmsdo9I8zlayP6P/7eXzQPu9OlVJQ7Zt3HGI7oUSEFKcRw+Lh6XKB8UOcykE
5GRp6JJIB2/F6p8Sh91rIEJEXeJhgQh694b2m2kSRsYMO6Ihamx4Hr1Jew4EeKpv
nVisq3wmJDFuslLnVPJ+ld9QPLVDwT+qI4L2adVZmm5kzZBxkLAdh7KGTVbQQlN0
BmZGUs9AcKItL01Gopjzjvja3g0QozrxLp3BaxIXoOpON+S2cumUIa7P1yMv2G56
Xt1JNUmaoRz4nMYtzfjEVY26MHcHojgLo15HjtR3ROeJx1DSOAElXl+GYlv5lbo6
eH9NBknjpQEl4hkdYEfKBchBdk5ubcibrR2j6LgeVndpyX3g/4XfbGyUvAotqfiz
hAQyEtVYGpjTQxo4FsB2b1BMCp0Qe3MulfHm91Yu//FFAdNn5abrqaOHBnS9xf9h
oAqtXj/X0LcYCZQsIvmyuhNw5avr7ZTSHDoY0jQOYYarCx+3r8OuVieSXJ+XPug0
70JBqBIPVc8GBcxOZkfSPnzOVebzDfZiipDWHWVkapW7Gb5tHHDKAOrxVMxrV/3T
vs6xMf7p9C2Mi15GJCTP9disSKpTkiiEwULOMwXSsWjDv/Wb7cM=
=tMG2
-----END PGP SIGNATURE-----

--------------1r0j3oNIsG87G01OVY900Y5p--
