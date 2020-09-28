Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEDF127B001
	for <lists+linux-man@lfdr.de>; Mon, 28 Sep 2020 16:31:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726565AbgI1Obz convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 28 Sep 2020 10:31:55 -0400
Received: from eu-smtp-delivery-151.mimecast.com ([207.82.80.151]:48347 "EHLO
        eu-smtp-delivery-151.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726461AbgI1Obz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Sep 2020 10:31:55 -0400
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mtapsc-2-Cf4RCpQhP_mZ6pa9qcpuwA-1; Mon, 28 Sep 2020 15:31:50 +0100
X-MC-Unique: Cf4RCpQhP_mZ6pa9qcpuwA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 28 Sep 2020 15:31:50 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Mon, 28 Sep 2020 15:31:50 +0100
From:   David Laight <David.Laight@ACULAB.COM>
To:     'Alejandro Colomar' <colomar.6.4.3@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
CC:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Subject: RE: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
Thread-Topic: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
Thread-Index: AQHWlZvzMEsxhmKRdUKWplCDld/sp6l+HH7g
Date:   Mon, 28 Sep 2020 14:31:50 +0000
Message-ID: <ff3c585bcbb54393aeb91b974c50d1bb@AcuMS.aculab.com>
References: <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
 <562859fd-6740-1068-d9d0-9562140cec33@gmail.com>
 <20200928125227.yr2ugl23ib6mid76@localhost.localdomain>
 <5d4f71a6-8a5e-c683-fcbd-b5453435d736@gmail.com>
In-Reply-To: <5d4f71a6-8a5e-c683-fcbd-b5453435d736@gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Alejandro Colomar
> Sent: 28 September 2020 14:33
...
> There are a few cases:  if I want to find declarations of type int,
> I'd start with:
> 
> $ grep -rn "int\s"
> 
> or something like that.  "int\~" would break the ability to do that.

The 'word markers' \< and \> are your friends; look for "\<int\>".

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

