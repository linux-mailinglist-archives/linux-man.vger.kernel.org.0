Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 385343FE71B
	for <lists+linux-man@lfdr.de>; Thu,  2 Sep 2021 03:23:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232372AbhIBBYa convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Wed, 1 Sep 2021 21:24:30 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:59318 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbhIBBYa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Sep 2021 21:24:30 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 56289160144;
        Wed,  1 Sep 2021 18:23:32 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id qiMA3Z-7RiPJ; Wed,  1 Sep 2021 18:23:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 9FF53160157;
        Wed,  1 Sep 2021 18:23:31 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id Fb867ZHxAFiQ; Wed,  1 Sep 2021 18:23:31 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 728C2160144;
        Wed,  1 Sep 2021 18:23:31 -0700 (PDT)
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <CAKgNAkjv2vVDU+z4ActGqo8gcZekCnZFRVESz_hhNjdPvbV96w@mail.gmail.com>
 <87lf4im6sf.fsf@oldenburg.str.redhat.com>
 <03f3b96f-1dd4-e9cb-2f24-7fc8ae7252bc@cs.ucla.edu>
 <CAKgNAki2zUjpw8BJDvmAN_8ZAMsBZx_dYn8RM4+KDefFbQq7UQ@mail.gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: Adding a realloc() usage note to the malloc(3) manual page
Message-ID: <f89632f5-432f-9f7e-97e4-7de3595be0e8@cs.ucla.edu>
Date:   Wed, 1 Sep 2021 18:23:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAki2zUjpw8BJDvmAN_8ZAMsBZx_dYn8RM4+KDefFbQq7UQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/1/21 5:21 PM, Michael Kerrisk (man-pages) wrote:
> Obviously, '*ptr' is invalid after a
> successful realloc(). But why is 'ptr' invalid?

The C standard says that once a program has freed a non-null pointer, 
the program cannot look at the pointer's value any more. It can't copy 
the value to another pointer, and it can't even test whether the value 
is null. A debugging implementation can trap any use of the pointer's value.

This rule is not an issue for production uses of glibc realloc. However, 
it could at least in theory affect debugging implementations like gcc 
-fsanitize=address, because the rule can help catch bugs in programs. 
And I vaguely recall talk that a few non-glibc platforms (IBM i, 
perhaps?) enforce the rule.
