Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE7A33FEA31
	for <lists+linux-man@lfdr.de>; Thu,  2 Sep 2021 09:46:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243762AbhIBHrq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Sep 2021 03:47:46 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:40946 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243444AbhIBHrp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Sep 2021 03:47:45 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 85BA516014D;
        Thu,  2 Sep 2021 00:46:47 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id DnVxJ8QjFO3h; Thu,  2 Sep 2021 00:46:46 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id C743C16015D;
        Thu,  2 Sep 2021 00:46:46 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id hClTeJMVuGM8; Thu,  2 Sep 2021 00:46:46 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 897EE16014D;
        Thu,  2 Sep 2021 00:46:46 -0700 (PDT)
Subject: Re: Adding a realloc() usage note to the malloc(3) manual page
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <CAKgNAkjv2vVDU+z4ActGqo8gcZekCnZFRVESz_hhNjdPvbV96w@mail.gmail.com>
 <87lf4im6sf.fsf@oldenburg.str.redhat.com>
 <03f3b96f-1dd4-e9cb-2f24-7fc8ae7252bc@cs.ucla.edu>
 <CAKgNAki2zUjpw8BJDvmAN_8ZAMsBZx_dYn8RM4+KDefFbQq7UQ@mail.gmail.com>
 <f89632f5-432f-9f7e-97e4-7de3595be0e8@cs.ucla.edu>
 <CAKgNAkiQ7TUkmwyPGh5eotAZsgawy1d5NdDf17U=5Z5TgWWccA@mail.gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Message-ID: <e1e1063a-46d7-9f96-ba36-87a4580fa330@cs.ucla.edu>
Date:   Thu, 2 Sep 2021 00:46:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiQ7TUkmwyPGh5eotAZsgawy1d5NdDf17U=5Z5TgWWccA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/1/21 10:22 PM, Michael Kerrisk (man-pages) wrote:

> I suppose that you are talking about this
> sentence (which I did finally discover) from Section 6.2.4 ("Storage
> durations of objects") in the C11 standard:
> 
> [[
> The value of a pointer becomes indeterminate when the object it points
> to (or just past) reaches the end of its lifetime.
> ]]

Although I haven't checked the standard, that does sound like the sort 
of thing I was talking about, yes.
