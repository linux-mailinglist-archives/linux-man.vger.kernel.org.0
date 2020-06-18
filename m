Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDE9E1FF0D1
	for <lists+linux-man@lfdr.de>; Thu, 18 Jun 2020 13:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726919AbgFRLnz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Jun 2020 07:43:55 -0400
Received: from gateway21.websitewelcome.com ([192.185.45.36]:21338 "EHLO
        gateway21.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725955AbgFRLnz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Jun 2020 07:43:55 -0400
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
        by gateway21.websitewelcome.com (Postfix) with ESMTP id 1C39B400C6ED8
        for <linux-man@vger.kernel.org>; Thu, 18 Jun 2020 06:43:54 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id lsxVjFJJYXGIklsxWjlmbx; Thu, 18 Jun 2020 06:43:54 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:43134 helo=localhost)
        by gator3278.hostgator.com with esmtpa (Exim 4.93)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1jlsxV-003rNF-6B; Thu, 18 Jun 2020 06:43:53 -0500
Date:   Thu, 18 Jun 2020 13:43:44 +0200
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     Walter Harms <wharms@bfs.de>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: [PATCH] fread.3: Explain that file position is moved after
 calling fread()/fwrite()
Message-ID: <20200618114344.rsgecwlvpmesfa7a@comp.lan>
References: <20200616182659.12365-1-arkadiusz@drabczyk.org>
 <20200616190017.5y3pwpb22w2jeqls@jwilk.net>
 <20200616225034.e4uzibuemo7lpmet@comp.lan>
 <3294b2a2fae14460984e2f3162f7ec35@bfs.de>
 <20200617173010.vekk35vrslmtdm6r@comp.lan>
 <4d901a75517246baa6a5f82f291c0595@bfs.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4d901a75517246baa6a5f82f291c0595@bfs.de>
User-Agent: NeoMutt/20180716
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1jlsxV-003rNF-6B
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (localhost) [89.69.237.178]:43134
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jun 18, 2020 at 08:37:02AM +0000, Walter Harms wrote:
> Isn't it already covered by this fragment:
>
> "If an error occurs, or the end of the file is reached, the return
> value is a short item count (or zero)."
>
> IMHO no,
> what does a "short item count" mean ?

"items of data" refers to nmemb:

"The function fread() reads nmemb items of data"

so "item count" means number of size-long sequences of bytes and
"short" means fewer than requested. But I think you know that well and
you just think that "short item count" is not clear enough, right?

(And of course I hope that I get it right.)

> E.g. my size is 4 bytes and there are 3 bytes left to read. what is
> the return value?

If the requested size is 4 but there are only 3 bytes left then
fread() will return 0, no matter what's the value of nmemb because
it's not able to read even a single item and feof() will return
non-zero. I think that this is explained clearly enough in the
manpage.

> and will the last few bytes ever read ?

That is interesting. POSIX
https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/ says
that "If a partial element is read, its value is unspecified.". But as
fread() returns number of items it has successfully read the returned
value should always be checked and it's different than requested nmemb
it means an error and I guess there is no way to tell how many bytes
have been partially read - for example if size == 4 and nmemb == 1 and
returned value is 0 you don't know if fread() read 1, 2 or 3 bytes.

Anyway, the patch that I sent explains that file pointer is moved
after fread()/fwrite(). The discussion about return value should be
started in a separate thread.

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
