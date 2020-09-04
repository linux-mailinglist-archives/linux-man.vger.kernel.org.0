Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C80F825E1EC
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 21:21:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726621AbgIDTVu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 15:21:50 -0400
Received: from albireo.enyo.de ([37.24.231.21]:36622 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726221AbgIDTVt (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 4 Sep 2020 15:21:49 -0400
Received: from [172.17.203.2] (helo=deneb.enyo.de)
        by albireo.enyo.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1kEHHP-0005U7-OO; Fri, 04 Sep 2020 19:21:47 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1kEHHP-0003SQ-Ma; Fri, 04 Sep 2020 21:21:47 +0200
From:   Florian Weimer <fw@deneb.enyo.de>
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: strlen
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
Date:   Fri, 04 Sep 2020 21:21:47 +0200
In-Reply-To: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org> (Jonny Grant's
        message of "Fri, 4 Sep 2020 19:01:12 +0100")
Message-ID: <87lfhpgxf8.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Jonny Grant:

> Hello
>
> https://man7.org/linux/man-pages/man3/strlen.3.html
>
> Is it possible to clarify :-
>
> * glibc will SIGSEGV if 's' is NULL
> * there are no ERROR returns

That would be misleading.  Whether strlen (NULL) is undefined also
depends on the compiler.  They know that the argument cannot be zero
and optimize accordingly.
