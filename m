Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFCFC430C86
	for <lists+linux-man@lfdr.de>; Mon, 18 Oct 2021 00:00:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344721AbhJQWDF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Oct 2021 18:03:05 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:43112 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242831AbhJQWDF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Oct 2021 18:03:05 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id C45E616005E;
        Sun, 17 Oct 2021 15:00:54 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id rey40c4_ipVL; Sun, 17 Oct 2021 15:00:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 15343160060;
        Sun, 17 Oct 2021 15:00:54 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id d25FXN1g7lew; Sun, 17 Oct 2021 15:00:53 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id DD0D416005E;
        Sun, 17 Oct 2021 15:00:53 -0700 (PDT)
Message-ID: <5cb8ec23-6e71-0619-3df4-b554942e66c6@cs.ucla.edu>
Date:   Sun, 17 Oct 2021 15:00:52 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
From:   Paul Eggert <eggert@cs.ucla.edu>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     libc-alpha@sourceware.org, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
 <20211011111237.9414-2-alx.manpages@gmail.com>
 <15d7b96d-13d0-86c1-48f3-24a637ab8e30@cs.ucla.edu>
 <e46d9e6b-c2c8-66e3-6b18-f24ef718f59f@gmail.com>
 <38fa4e31-f70d-f3f3-e964-b4831b750271@cs.ucla.edu>
 <532c26f8-25e4-699a-49be-a3368a6ea84d@gmail.com>
Content-Language: en-US
Organization: UCLA Computer Science Department
Subject: Re: [PATCH v2 2/2] timegm.3: Remove recommendation against use of
 timegm()
In-Reply-To: <532c26f8-25e4-699a-49be-a3368a6ea84d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/17/21 11:02, Alejandro Colomar (man-pages) wrote:

> timegm(3) is the only non-error-prone 
> solution in glibc for using UTC times, so it should not be marked as 
> "avoid using".

timegm is not portable, so it's reasonable for the documentation to warn 
against its use. Perhaps the warning could be made clearer.


> - int is unlikely to be >32 bits.

There are a few platforms where int is >32 bits (these are typically 
ILP64). Although glibc doesn't currently support them, let's not place 
unnecessary obstacles in the way.


> - Even if int ever happened to be 64 bit, this problem would still be 
> something very theoretical

The behavior of the 'zdump' command would change. I imagine it'd affect 
other commands as well. Admittedly most people wouldn't notice.


> if (tm->tm_year > SOME_ARBITRARY_HUGE_VALUE 

Let's not impose arbitrary limits.
