Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E088D42FF69
	for <lists+linux-man@lfdr.de>; Sat, 16 Oct 2021 02:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236329AbhJPAWm convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Fri, 15 Oct 2021 20:22:42 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:47484 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231881AbhJPAWl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Oct 2021 20:22:41 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 4D0DE160106;
        Fri, 15 Oct 2021 17:20:34 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id ih92w59bUxev; Fri, 15 Oct 2021 17:20:33 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 8FFC71600FD;
        Fri, 15 Oct 2021 17:20:33 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id TeD0Dq0vb98d; Fri, 15 Oct 2021 17:20:33 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 66EE91600EA;
        Fri, 15 Oct 2021 17:20:33 -0700 (PDT)
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     libc-alpha@sourceware.org, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
References: <a8e09a03-3eb2-d6c0-c662-e3db800fe2fc@gmail.com>
 <20211011111237.9414-2-alx.manpages@gmail.com>
 <15d7b96d-13d0-86c1-48f3-24a637ab8e30@cs.ucla.edu>
 <e46d9e6b-c2c8-66e3-6b18-f24ef718f59f@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: [PATCH v2 2/2] timegm.3: Remove recommendation against use of
 timegm()
Message-ID: <38fa4e31-f70d-f3f3-e964-b4831b750271@cs.ucla.edu>
Date:   Fri, 15 Oct 2021 17:20:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <e46d9e6b-c2c8-66e3-6b18-f24ef718f59f@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/15/21 3:03 PM, Alejandro Colomar (man-pages) wrote:

> Actually, since timegm(3) is implemented in terms of mktime(3), as far as I could read from glibc code, the problem will be the same, I think.

No, because another thread could setenv ("TZ", ...) between the time 
that you call mktime and the time you look at the 'timezone' variable. 
So even though mktime itself is thread-safe, the expression 'mktime(tm) 
- timezone' is not.

> But timegm(3) shouldn't need to depend on environment variables.

It does depend, if leap seconds are involved.

>> and the subtraction might overflow.
> 
> Yup, casting to int64_t needed.

That would help, but it still wouldn't suffice. It'd mishandle -1 
returns, for example. Plus, we're better of not putting today's hardware 
assumptions into code (suppose int is 64 bits in future machines?).

> BTW, I had a look at mktime source 
> code, and it uses long, which might be 32 bits, and then there's a lot 
> of checking for overflow.

mktime uses long_int, which is not necessarily 'long'. And no matter 
what type you pick, it could overflow on some platform, even if it's an 
only-hypothetical platform now.
