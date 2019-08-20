Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D53D4966FB
	for <lists+linux-man@lfdr.de>; Tue, 20 Aug 2019 18:58:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729852AbfHTQ6o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Aug 2019 12:58:44 -0400
Received: from plasma31.jpberlin.de ([80.241.56.82]:24721 "EHLO
        plasma31.jpberlin.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729827AbfHTQ6n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Aug 2019 12:58:43 -0400
Received: from spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de [80.241.56.122])
        by plasma.jpberlin.de (Postfix) with ESMTP id BC2C1100542;
        Tue, 20 Aug 2019 18:58:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from plasma.jpberlin.de ([80.241.56.76])
        by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de [80.241.56.122]) (amavisd-new, port 10030)
        with ESMTP id aP6HhrhUsf9l; Tue, 20 Aug 2019 18:58:38 +0200 (CEST)
Received: from webmail.opensynergy.com (unknown [217.66.60.5])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (Client CN "webmail.opensynergy.com", Issuer "GeoTrust EV RSA CA 2018" (not verified))
        (Authenticated sender: opensynergy@jpberlin.de)
        by plasma.jpberlin.de (Postfix) with ESMTPSA id B0D10100524;
        Tue, 20 Aug 2019 18:58:38 +0200 (CEST)
Received: from mmo.open-synergy.com (10.25.255.1) by MXS02.open-synergy.com
 (10.25.10.18) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 20 Aug
 2019 18:58:37 +0200
Subject: Re: [PATCH] io_submit.2: Fix kernel version numbers for
 'aio_rw_flags' flags
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>,
        Damir Shaikhutdinov <Damir.Shaikhutdinov@opensynergy.com>
References: <0718906b-181c-e04c-288a-e6097e6d7e89@opensynergy.com>
 <b91eb798-27da-a9ac-8ea0-3142a489840b@gmail.com>
From:   Matti Moell <Matti.Moell@opensynergy.com>
Openpgp: preference=signencrypt
Message-ID: <9759bf64-23b0-b073-e526-16d56f830aee@opensynergy.com>
Date:   Tue, 20 Aug 2019 18:58:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b91eb798-27da-a9ac-8ea0-3142a489840b@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.25.255.1]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 19.08.19 23:44, Michael Kerrisk (man-pages) wrote:
> Is the version number you propose correct? When I check:
> 
> $ git describe --contains 9830f4be159b
> v4.13-rc1~70^2~30
> 
> So, should be 4.13, no?

Yes indeed, it should be. I will resend the patch, with the corrected
version.

> 
> Thanks,
> 
> Michael
> 
