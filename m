Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14175215627
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 13:15:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728708AbgGFLPN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 07:15:13 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:58583 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728578AbgGFLPN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 07:15:13 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.250])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id A1D9543B1D12;
        Mon,  6 Jul 2020 13:15:11 +0200 (CEST)
Received: from jwilk.net (37.59.142.99) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Mon, 6 Jul 2020
 13:15:10 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-99G00314a08ef8-9729-46e4-a0e5-1d2bf9358aca,46907DD7FEC5841C66EC7F8F4BE39465BDB61822) smtp.auth=jwilk@jwilk.net
Date:   Mon, 6 Jul 2020 13:15:08 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: expm1.3, bogus full stop
Message-ID: <20200706111508.vjy5mbttyzd6hy2q@jwilk.net>
References: <20200706101221.GA26426@Debian-50-lenny-64-minimal>
 <5e2ae325-1998-0a72-9e03-b2a0bd0fe6e2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <5e2ae325-1998-0a72-9e03-b2a0bd0fe6e2@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG7EX2.mxp6.local (172.16.2.62) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: ae8383e7-0f3d-49a5-994d-0b5cd95c855c
X-Ovh-Tracer-Id: 558164881803368413
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudefgdeflecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk <mtk.manpages@gmail.com>, 2020-07-06, 13:01:
>>Man page: expm1.3
>>Issue: bogus full stop after infinity
>>
>>"Before approximately glibc version 2.11, B<expm1>()  raised a bogus invalid "
>>"floating-point exception in addition to the expected overflow exception, and "
>>"returned a NaN instead of positive infinity.  for some large positive I<x> "
>>"values,"
>
>This page comes from POSIX. I haven't checked whether the problem was 
>in the original source, or introduced during import of the pages.

Wait... How could a note about glibc compatibility come from POSIX?

-- 
Jakub Wilk
