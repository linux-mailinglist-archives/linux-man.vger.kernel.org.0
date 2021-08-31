Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14D713FC500
	for <lists+linux-man@lfdr.de>; Tue, 31 Aug 2021 11:53:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240708AbhHaJaj convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Tue, 31 Aug 2021 05:30:39 -0400
Received: from zimbra.cs.ucla.edu ([131.179.128.68]:47346 "EHLO
        zimbra.cs.ucla.edu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240649AbhHaJai (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Aug 2021 05:30:38 -0400
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 2A199160111;
        Tue, 31 Aug 2021 02:29:43 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id 5OIFJp2qZF1S; Tue, 31 Aug 2021 02:29:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 719D116011A;
        Tue, 31 Aug 2021 02:29:42 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id K5GXgKaGaS9J; Tue, 31 Aug 2021 02:29:42 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 4434E160111;
        Tue, 31 Aug 2021 02:29:42 -0700 (PDT)
To:     Florian Weimer <fweimer@redhat.com>
Cc:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <CAKgNAkjv2vVDU+z4ActGqo8gcZekCnZFRVESz_hhNjdPvbV96w@mail.gmail.com>
 <87lf4im6sf.fsf@oldenburg.str.redhat.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: Adding a realloc() usage note to the malloc(3) manual page
Message-ID: <03f3b96f-1dd4-e9cb-2f24-7fc8ae7252bc@cs.ucla.edu>
Date:   Tue, 31 Aug 2021 02:29:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87lf4im6sf.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 8/31/21 12:07 AM, Florian Weimer wrote:
> the somewhat common idiom of adjusting internal pointers in the
> allocation to point to the new allocation is invalid.

Good point. Also, the example call to malloc should check the return value.

Something like this, perhaps:

   char *ptr = malloc(origsize);
   if (ptr == NULL)
     return NULL;
   char *p = ptr + some_random_value();

   /* In the following, we presume 'newsize' is not 0.
      (If 'newsize' is zero, realloc() may return NULL,
      and that is not an error.) */

   ptrdiff_t p_offset = p - ptr;
   char *nptr = realloc(ptr, newsize);
   if (nptr == NULL) {
     /* Handle error; the block pointed to by 'ptr' is
        still usable. */
   } else {
     /* realloc() succeeded; update 'ptr' and 'p' to point to
        the (possibly moved) block.  'p += nptr - ptr; ptr = nptr;'
        would be invalid here, since 'ptr' is invalid immediately
        after the successful realloc().  */
     ptr = nptr;
     p = nptr + p_offset;
   }
