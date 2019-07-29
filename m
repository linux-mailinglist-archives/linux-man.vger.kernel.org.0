Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7AC6793A6
	for <lists+linux-man@lfdr.de>; Mon, 29 Jul 2019 21:18:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729345AbfG2TSU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jul 2019 15:18:20 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:34810 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729315AbfG2TSU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jul 2019 15:18:20 -0400
Received: by mail-wr1-f68.google.com with SMTP id 31so63098424wrm.1
        for <linux-man@vger.kernel.org>; Mon, 29 Jul 2019 12:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pP2bLhcVqqE17k7EKIbjQ3y/M1IDFWk5Tm86AMwyw04=;
        b=KH51k5Anhvwy/k+MJ5bqxFUPnGj9fQwEZOzpf1gLN9WSPgntdhPEevhDyZy1ffap6H
         GHpOaL1nNQIDxbp4BcLohEDY16wQ8XBawKQXSqxFpDzWMndEGf2ShYV90AdRhnsXXOwA
         QqrQPIoHJ3L2zJQYAuaqjUDj/srgHU90rmazSd/Fqe/7FQfhea0lYvnWXhikTW1WsijD
         VV0GmxNMcPAcKXv76F3IMODb69vZdRRpfN63FBrVoAkP5Lzru4jOxpSy18UUU2Nzpj+G
         LsY8TSXUUjWY5yeGv2PFETgdlSceuCGMBsrFAwd6Gb/FaztbX/ny4RCcFfIRqWUyOjs5
         c56Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pP2bLhcVqqE17k7EKIbjQ3y/M1IDFWk5Tm86AMwyw04=;
        b=a4fUtNRx/EHNHDoqke4F7GtymgWFGCoe7tF/w1yPO8sexwqnH5f9G6/SybpWUr70vQ
         +7rFMVUq/MtkUTLPZQRyvyLb3j0JDMAU5SkmgoHZvtwdPsQNXSoeMLo+QYgvYr0j1Onq
         627LVz7dfHnR30tlUYxqVauOB6lsQFcUosUjE84wFjV6GH/dhu3Xkh8S3FQETsNOKIok
         6FRwuVCHT7pjQofV+mPHtTJ6BEZJ5x33WiWYUbCEBVm78U6A2w66b73tdUvuxAcV2411
         tMB1FUhkxQd/KsmP0SuMPcQAdXYXEeDqPvl5eA+MflwDXPsPFpZDIf6OId+m0z6IFqHy
         2P+Q==
X-Gm-Message-State: APjAAAWn35v9hiB3AmMY9wPw5EAg4RnlmGHW4cGS+Kd6Go8QDmPSWB79
        w6We1SNwltivvGNblmzJoaE=
X-Google-Smtp-Source: APXvYqxa1x5zb9qRa8SK0lpz74Y16OGv5/tL4Plt5cArLryKy3KbGUA7hg5T/2Zk8qsLjJrC3JJJow==
X-Received: by 2002:a5d:4e50:: with SMTP id r16mr117138411wrt.227.1564427898438;
        Mon, 29 Jul 2019 12:18:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:3aff:2d01:3e8:cefd:7d80:b611? ([2001:a61:3aff:2d01:3e8:cefd:7d80:b611])
        by smtp.gmail.com with ESMTPSA id 18sm52603738wmg.43.2019.07.29.12.18.17
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 12:18:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] pldd.1: Document glibc's unbreakage of tool.
To:     Carlos O'Donell <carlos@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20190511072049.2w7pp723iszp3gra@localhost.localdomain>
 <8736liit24.fsf@oldenburg2.str.redhat.com>
 <20190513141746.mail6ny43wh4t5oj@localhost.localdomain>
 <87y335m6fq.fsf@oldenburg2.str.redhat.com>
 <20190517155057.vr5uk6hfkyp44y3t@localhost.localdomain>
 <CAEMqeSrCMFZ8GQU=kR_+KXaqnd9m-3qUSQk1PNZ2xHjZ_YVHFg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3f28f3b3-8fde-2bfb-51bc-6958511ee666@gmail.com>
Date:   Mon, 29 Jul 2019 21:18:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAEMqeSrCMFZ8GQU=kR_+KXaqnd9m-3qUSQk1PNZ2xHjZ_YVHFg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/17/19 5:56 PM, Carlos O'Donell wrote:
> On Fri, May 17, 2019 at 11:51 AM G. Branden Robinson
> <g.branden.robinson@gmail.com> wrote:
>> What would you prefer?  That the man page not document the bug at all?
>> Was it a mistake in your view to have added the information about the
>> bug to the man page in the first place?
> 
> I think having the glibc upstream version information is useful.

And so do I. My compromise in such cases is to write something like:
this:

BUGS
       From  glibc  2.19 to 2.29, pldd was broken: it just hung when exe‐
       cuted.  This problem was fixed in glibc 2.30, and the fix has been
       backported to earlier glibc versions in some distributions.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
