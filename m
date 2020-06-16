Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 279F11FC1DB
	for <lists+linux-man@lfdr.de>; Wed, 17 Jun 2020 00:51:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725941AbgFPWun (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Jun 2020 18:50:43 -0400
Received: from gateway21.websitewelcome.com ([192.185.45.140]:46189 "EHLO
        gateway21.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725849AbgFPWum (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Jun 2020 18:50:42 -0400
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
        by gateway21.websitewelcome.com (Postfix) with ESMTP id DC77540156E8D
        for <linux-man@vger.kernel.org>; Tue, 16 Jun 2020 17:50:41 -0500 (CDT)
Received: from gator3278.hostgator.com ([198.57.247.242])
        by cmsmtp with SMTP
        id lKPhjPjFzSxZVlKPhjb9Bv; Tue, 16 Jun 2020 17:50:41 -0500
X-Authority-Reason: nr=8
Received: from 89-69-237-178.dynamic.chello.pl ([89.69.237.178]:33352 helo=localhost)
        by gator3278.hostgator.com with esmtpa (Exim 4.93)
        (envelope-from <arkadiusz@drabczyk.org>)
        id 1jlKPg-00438g-PI; Tue, 16 Jun 2020 17:50:41 -0500
Date:   Wed, 17 Jun 2020 00:50:34 +0200
From:   Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] fread.3: Explain that file position is moved after
 calling fread()/fwrite()
Message-ID: <20200616225034.e4uzibuemo7lpmet@comp.lan>
References: <20200616182659.12365-1-arkadiusz@drabczyk.org>
 <20200616190017.5y3pwpb22w2jeqls@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200616190017.5y3pwpb22w2jeqls@jwilk.net>
User-Agent: NeoMutt/20180716
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.69.237.178
X-Source-L: No
X-Exim-ID: 1jlKPg-00438g-PI
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-69-237-178.dynamic.chello.pl (localhost) [89.69.237.178]:33352
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 3
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Jun 16, 2020 at 09:00:17PM +0200, Jakub Wilk wrote:
> * Arkadiusz Drabczyk <arkadiusz@drabczyk.org>, 2020-06-16, 20:26:
> > +The file position indicator for the stream is advanced by the number
> > +of characters successfully read or written.
> 
> s/characters/bytes/

It says `characters' in C11 and C17
https://web.archive.org/web/20181230041359if_/http://www.open-std.org/jtc1/sc22/wg14/www/abq/c17_updated_proposed_fdis.pdf
standards:

"Description

The fread function reads, into the array pointed to by ptr , up to
nmemb elements whose size is specified by size , from the stream
pointed to by stream . For each object, size calls are made to the
fgetc function and the results stored, in the order read, in an array
of unsigned char exactly overlaying the object. The file position
indicator for the stream (if defined) is advanced by the number of
characters successfully read. If an error occurs, the resulting value
of the file position indicator for the stream is indeterminate. If a
partial element is read, its value is indeterminate."

but indeed `bytes' sounds nicer especially if unsigned char is not
mentioned in the manpage. I sent v2.

-- 
Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
