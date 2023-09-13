Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A755F79F0E4
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 20:09:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229846AbjIMSKA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 14:10:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbjIMSJ7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 14:09:59 -0400
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0928F19AE
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 11:09:54 -0700 (PDT)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id gSmgqSQnI6NwhgUJGqjRNR; Wed, 13 Sep 2023 18:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1694628594; bh=QX5YuLY092r57YIMSVfqvCYXryrEy3ei1t9mInNHwog=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=YERFwLgJFULzC495amn8J5WYqiy8aa9wM9lc99xvUlpcYCEZfbSFrWIVKXj8u4udo
         oF2K+5qdzVpdu5IPIKP6kNFsNMkaYAIXvOnYfd01HbqOdSXXcnyw8QCpXoJ47CRvU3
         eHIqBg5DxI1g9y1++9xfsy3celExxNS3wLbZJx4a0OQ5OJNPSTET7BHoO90sU0gja1
         +NtMpyeL4swdsfc42rM+OYi/wVAKaXT8nvl9cS9Qy73OuC9hSFM0y6AQVEUt71bv58
         B7bHrSFO+fvjFjgA1F5c3EamwCm1bk/7CVMj0pVESvvclmytcFgn6xv6BoneLp7zH/
         803pL/Q3SNbjA==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id gUJFqi0HnHFsOgUJFqnj6f; Wed, 13 Sep 2023 18:09:54 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=6501faf2
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8 a=uZvujYp8AAAA:8
 a=npldXguGAAAA:8 a=Vt2AcnKqAAAA:8 a=mimUr31Rh0qILy3fxx8A:9 a=QEXdDO2ut3YA:10
 a=eKhen3bU3p4A:10 a=hT3fivVCblMA:10 a=AjGcO6oz07-iQ99wixmX:22
 a=SLzB8X_8jTLwj6mN0q5r:22 a=1MEZn5qd6kv58cYvHi58:22 a=v10HlyRyNeVhbzM4Lqgd:22
Message-ID: <b3f8edc2-aec4-e0e9-e5c9-785183e422ec@Shaw.ca>
Date:   Wed, 13 Sep 2023 12:09:52 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: POSIX manual pages
Content-Language: en-CA
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Geoff Clare <gwc@opengroup.org>,
        Eric Blake <eblake@redhat.com>,
        Andrew Josey <ajosey@opengroup.org>
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfB7I7tqtUq0ppMPcg/znqNI77zvs8XCiAujkqeHXJNtWcHyKSrRzc3r90dxLazEqtl3XsM1xUlqrbSXlXqmo79SnaNhlXqPfLj5CGCwtsEt44fFIF2Un
 xHg4Nn2vLeaE+RKziVmg6SbhBSA5Jr14Fzfs9ccxz5CHW5D0UuY06mJ+ndJDGACFJia0QZrk3FY6Ef1UB7IYP1WdsXgtYo0pUaoYxRH/9q46bdYbxjEtWck1
 JhJxQZWiX/bxb7nMkn5JZl6GDSiqIzt0Ud/Q7oMHQwzMTEcwLreJ5B4+NaMA6oy4/EfMj6mhy9EnEUNBVWU2eqzKftEz22nWj4kFHNz6OWI5DjaCDdfHERVF
 2LXF1fdg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-09-13 10:15, Alejandro Colomar wrote:
> Hi Andrew,
> 
> [I reordered your answer for my response.]
> 
> On 2023-09-05 14:34, Andrew Josey wrote:
>>
>> hi Alejandro
>>
>> Apologies for the delay.
> 
> NP
> 
>>
>> Are you in touch with Michael Kerrisk?
> 
> Nope.
> 
>> It also appeared in discussions with Michael in 2020, that he had a way to convert the source format to man page format.
> 
> Yep, this is probably "the way":
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/posix.py>
> 
>> In the past we have worked with him and made a permissions grant - which outlines the terms we are able to grant — these are limited
>> by the copyright holders.
> 
> I understand.  Would it be possible to suggest the copyright holders opening a
> little bit more?  The C++ standard seems to be more open (it has a public git
> repository with the source of the drafts) [1].  Maybe POSIX could do something
> similar?    It would make contributions to the man-pages-posix project easier,
> as contributors would be able to test the script with the original sources;
> instead of just blindly trying something, and asking the maintainer to try it
> with the secret sources.
> 
> [1]:  <https://github.com/cplusplus/draft>

Hi Alex,

Perhaps you could request terms allowing you to maintain your own downstream 
repo(s) of the *generated* man pages, as you do of the linux man pages @ 
alejandro-colomar.es & git.kernel.org?

There would need to be a COPYRIGHT/COLOPHON disclaimer about content issues to 
be addressed to the Austin Group, and man page formatting issues to a posix-man 
list, if they are or you want to keep them separate, and kernel.org is agreeable 
to hosting a vger./lore.kernel.org posix-man list and git.kernel.org repo?

There are unlikely to be man page changes issued between releases (or released 
between issues?).

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry


[PDF drafts are freely available to registered users for personal use under:

	https://www.opengroup.org/austin/restricted/

discussions are freely visible in the bug tracker

	https://www.austingroupbugs.net/

documents are freely available via the document register

	https://www.opengroup.org/austin/docreg.html

with both shown on the mailing list archived at

	https://www.mail-archive.com/austin-group-l@opengroup.org/

which also has an Atom/RSS feed (which I prefer to use for most lists)

	https://www.mail-archive.com/austin-group-l@opengroup.org/maillist.xml.]
