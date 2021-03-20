Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00BDE342F52
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 20:42:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbhCTTl7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 15:41:59 -0400
Received: from albireo.enyo.de ([37.24.231.21]:46390 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229766AbhCTTlr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 20 Mar 2021 15:41:47 -0400
Received: from [172.17.203.2] (port=56379 helo=deneb.enyo.de)
        by albireo.enyo.de ([172.17.140.2]) with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1lNhTl-0007hX-Kr; Sat, 20 Mar 2021 19:41:45 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1lNhTl-0003L3-Fy; Sat, 20 Mar 2021 20:41:45 +0100
From:   Florian Weimer <fw@deneb.enyo.de>
To:     "Alejandro Colomar \(man-pages\)" <alx.manpages@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Mark Kettenis <kettenis@openbsd.org>
Subject: Re: [PATCH v2] errno.3: ENODATA is an XSI STREAMS extension
References: <4db92b50-d9f9-f1b5-13dd-54a525e561df@gmail.com>
        <20210320114203.2329-1-alx.manpages@gmail.com>
        <8735wp1w3i.fsf@mid.deneb.enyo.de>
        <0dc5409f-dff9-cbf7-e522-e5c25df75577@gmail.com>
Date:   Sat, 20 Mar 2021 20:41:45 +0100
In-Reply-To: <0dc5409f-dff9-cbf7-e522-e5c25df75577@gmail.com> (Alejandro
        Colomar's message of "Sat, 20 Mar 2021 20:31:36 +0100")
Message-ID: <87k0q1zk7a.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

> Proposal:
>
> [
>        ENODATA
>               The  named  attribute does not exist, or the process
>               has no access to this attribute.
>
>               In POSIX.1-2001 (XSI STREAMS option), this error was
>               described as  "No message is available on the STREAM
>               head read queue".
>
> ]
>
> What do you think about it?

Please reference xattr(7), so that it's clear what kind of attributes
are meant here.
