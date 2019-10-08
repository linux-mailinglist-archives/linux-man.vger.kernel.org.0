Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6EEC4D014D
	for <lists+linux-man@lfdr.de>; Tue,  8 Oct 2019 21:41:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729602AbfJHTlo convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Tue, 8 Oct 2019 15:41:44 -0400
Received: from out03.mta.xmission.com ([166.70.13.233]:60722 "EHLO
        out03.mta.xmission.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728465AbfJHTlo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Oct 2019 15:41:44 -0400
Received: from in02.mta.xmission.com ([166.70.13.52])
        by out03.mta.xmission.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1iHvMa-0006qJ-Up; Tue, 08 Oct 2019 13:41:40 -0600
Received: from ip68-227-160-95.om.om.cox.net ([68.227.160.95] helo=x220.xmission.com)
        by in02.mta.xmission.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1iHvMa-0001Zj-18; Tue, 08 Oct 2019 13:41:40 -0600
From:   ebiederm@xmission.com (Eric W. Biederman)
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     Christian Brauner <christian.brauner@ubuntu.com>,
        linux-man <linux-man@vger.kernel.org>,
        Containers <containers@lists.linux-foundation.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andy Lutomirski <luto@amacapital.net>,
        Jordan Ogas <jogas@lanl.gov>, werner@almesberger.net,
        Al Viro <viro@ftp.linux.org.uk>
References: <CAKgNAki0bR5zZr+kp_xjq+bNUky6-F+s2ep+jnR0YrjHhNMB1g@mail.gmail.com>
        <20190805103630.tu4kytsbi5evfrhi@mikami>
        <3a96c631-6595-b75e-f6a7-db703bf89bcf@gmail.com>
        <da747415-4c7a-f931-6f2e-2962da63c161@philippwendler.de>
        <CAKgNAkjS+x7aMVUiVSgCRwgi8rnukqJv=svtTARE-tt-oxQxWw@mail.gmail.com>
        <87r24piwhm.fsf@x220.int.ebiederm.org>
        <CAKgNAkhK2qBbz5aVY9VdK0UzvpZ=c7c7LWQ1MK2gu-rVKUz9_g@mail.gmail.com>
        <87ftl5donm.fsf@x220.int.ebiederm.org>
        <b8b9d8bd-e959-633f-b879-4bfe4eb0df23@gmail.com>
        <20190910111551.scam5payogqqvlri@wittgenstein>
        <30545c5c-ff4c-8b87-e591-40cc0a631304@gmail.com>
        <871rwnda47.fsf@x220.int.ebiederm.org>
        <448138b8-0d0c-5eb3-d5e5-04a26912d3a8@gmail.com>
        <87ef0hbezt.fsf@x220.int.ebiederm.org>
        <cc21557f-1568-68c3-e322-47ceb52fdf53@gmail.com>
        <71cad40b-0f9f-24de-b650-8bc4fce78fa8@gmail.com>
        <87y2y6j9i1.fsf@x220.int.ebiederm.org>
        <7e4b23df-ab83-3d5a-3dc5-54025e3682cf@gmail.com>
        <87k19geey0.fsf@x220.int.ebiederm.org>
        <c7041c6a-a4c6-75f2-5380-4fed67cd60b1@gmail.com>
Date:   Tue, 08 Oct 2019 14:40:55 -0500
In-Reply-To: <c7041c6a-a4c6-75f2-5380-4fed67cd60b1@gmail.com> (Michael
        Kerrisk's message of "Tue, 8 Oct 2019 16:27:25 +0200")
Message-ID: <87eeznc9fc.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-XM-SPF: eid=1iHvMa-0001Zj-18;;;mid=<87eeznc9fc.fsf@x220.int.ebiederm.org>;;;hst=in02.mta.xmission.com;;;ip=68.227.160.95;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX1/hRZtkqxlOa+U99OxC3bfYn7yjgpKKjqE=
X-SA-Exim-Connect-IP: 68.227.160.95
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=8.0 tests=ALL_TRUSTED,BAYES_40,
        DCC_CHECK_NEGATIVE,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
        T_TooManySym_02,XM_B_Unicode autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
        * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
        *      [score: 0.3363]
        *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
        *  0.0 XM_B_Unicode BODY: Testing for specific types of unicode
        * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
        *      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
        *  0.0 T_TooManySym_02 5+ unique symbols in subject
        *  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;"Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 510 ms - load_scoreonly_sql: 0.07 (0.0%),
        signal_user_changed: 3.1 (0.6%), b_tie_ro: 2.1 (0.4%), parse: 1.11
        (0.2%), extract_message_metadata: 4.4 (0.9%), get_uri_detail_list:
        1.97 (0.4%), tests_pri_-1000: 5 (1.0%), tests_pri_-950: 1.55 (0.3%),
        tests_pri_-900: 1.33 (0.3%), tests_pri_-90: 26 (5.2%), check_bayes: 24
        (4.8%), b_tokenize: 9 (1.8%), b_tok_get_all: 8 (1.6%), b_comp_prob:
        2.6 (0.5%), b_tok_touch_all: 2.6 (0.5%), b_finish: 0.68 (0.1%),
        tests_pri_0: 450 (88.2%), check_dkim_signature: 0.70 (0.1%),
        check_dkim_adsp: 2.6 (0.5%), poll_dns_idle: 0.70 (0.1%), tests_pri_10:
        2.1 (0.4%), tests_pri_500: 6 (1.2%), rewrite_mail: 0.00 (0.0%)
Subject: Re: pivot_root(".", ".") and the fchdir() dance
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:

> Hello Eric,
>
>>>> Creating of a mount namespace in a user namespace automatically does
>>>> 'mount("", "/", MS_SLAVE | MS_REC, NULL);' if the starting mount
>>>> namespace was not created in that user namespace.  AKA creating
>>>> a mount namespace in a user namespace does the unshare for you.
>>>
>>> Oh -- I had forgotten that detail. But it is documented
>>> (by you, I think) in mount_namespaces(7):
>>>
>>>        *  A  mount  namespace  has  an  owner user namespace.  A
>>>           mount namespace whose owner user namespace is  differ‐
>>>           ent  from the owner user namespace of its parent mount
>>>           namespace is considered a less privileged mount names‐
>>>           pace.
>>>
>>>        *  When  creating  a  less  privileged  mount  namespace,
>>>           shared mounts are reduced to  slave  mounts.   (Shared
>>>           and  slave  mounts are discussed below.)  This ensures
>>>           that  mappings  performed  in  less  privileged  mount
>>>           namespaces will not propagate to more privileged mount
>>>           namespaces.
>>>
>>> There's one point that description that troubles me. There is a
>>> reference to "parent mount namespace", but as I understand things
>>> there is no parental relationship among mount namespaces instances
>>> (or am I wrong?). Should that wording not be rather something
>>> like "the mount namespace of the process that created this mount
>>> namespace"?
>> 
>> How about "the mount namespace this mount namespace started as a copy of"
>> 
>> You are absolutely correct there is no relationship between mount
>> namespaces.  There is just the propagation tree between mounts.  (Which
>> acts similarly to a parent/child relationship but is not at all the same
>> thing).
>
> Thanks. I made the text as follows:
>
>        *  Each  mount  namespace  has  an owner user namespace.  As noted
>           above, when a new mount namespace is  created,  it  inherits  a
>           copy  of  the  mount  points  from  the  mount namespace of the
>           process that created the new mount namespace.  If the two mount
>           namespaces are owned by different user namespaces, then the new
>           mount namespace is considered less privileged.

I hate to nitpick, but I am going to say that when I read the text above
the phrase "mount namespace of the process that created the new mount
namespace" feels wrong.

Either you use unshare(2) and the mount namespace of the process that
created the mount namespace changes.

Or you use clone(2) and you could argue it is the new child that created
the mount namespace.

Having a different mount namespace at the end of the creation operation
feels like it makes your phrase confusing about what the starting
mount namespace is.  I hate to use references that are ambiguous when
things are changing.

I agree that the term parent is also wrong.

Eric
