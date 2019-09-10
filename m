Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 94CECAF31E
	for <lists+linux-man@lfdr.de>; Wed, 11 Sep 2019 01:07:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725978AbfIJXHP convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Tue, 10 Sep 2019 19:07:15 -0400
Received: from out01.mta.xmission.com ([166.70.13.231]:44604 "EHLO
        out01.mta.xmission.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725965AbfIJXHP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Sep 2019 19:07:15 -0400
Received: from in02.mta.xmission.com ([166.70.13.52])
        by out01.mta.xmission.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1i7pE8-0002km-8e; Tue, 10 Sep 2019 17:07:12 -0600
Received: from 110.8.30.213.rev.vodafone.pt ([213.30.8.110] helo=x220.xmission.com)
        by in02.mta.xmission.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.87)
        (envelope-from <ebiederm@xmission.com>)
        id 1i7pE7-00013O-A2; Tue, 10 Sep 2019 17:07:12 -0600
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
Date:   Tue, 10 Sep 2019 18:06:48 -0500
In-Reply-To: <30545c5c-ff4c-8b87-e591-40cc0a631304@gmail.com> (Michael
        Kerrisk's message of "Tue, 10 Sep 2019 13:21:16 +0200")
Message-ID: <871rwnda47.fsf@x220.int.ebiederm.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-XM-SPF: eid=1i7pE7-00013O-A2;;;mid=<871rwnda47.fsf@x220.int.ebiederm.org>;;;hst=in02.mta.xmission.com;;;ip=213.30.8.110;;;frm=ebiederm@xmission.com;;;spf=neutral
X-XM-AID: U2FsdGVkX19gpHRC1XMCfJcrnQu7B/ABXa7XBMZB6l8=
X-SA-Exim-Connect-IP: 213.30.8.110
X-SA-Exim-Mail-From: ebiederm@xmission.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on sa07.xmission.com
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=8.0 tests=ALL_TRUSTED,BAYES_50,
        DCC_CHECK_NEGATIVE,TVD_RCVD_IP,T_TM2_M_HEADER_IN_MSG,T_TooManySym_01,
        T_TooManySym_02 autolearn=disabled version=3.4.2
X-Spam-Report: * -1.0 ALL_TRUSTED Passed through trusted hosts only via SMTP
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4038]
        *  0.0 TVD_RCVD_IP Message was received from an IP address
        *  0.0 T_TM2_M_HEADER_IN_MSG BODY: No description available.
        * -0.0 DCC_CHECK_NEGATIVE Not listed in DCC
        *      [sa07 1397; Body=1 Fuz1=1 Fuz2=1]
        *  0.0 T_TooManySym_02 5+ unique symbols in subject
        *  0.0 T_TooManySym_01 4+ unique symbols in subject
X-Spam-DCC: XMission; sa07 1397; Body=1 Fuz1=1 Fuz2=1 
X-Spam-Combo: ;"Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
X-Spam-Relay-Country: 
X-Spam-Timing: total 348 ms - load_scoreonly_sql: 0.05 (0.0%),
        signal_user_changed: 2.9 (0.8%), b_tie_ro: 2.00 (0.6%), parse: 1.14
        (0.3%), extract_message_metadata: 4.5 (1.3%), get_uri_detail_list:
        1.86 (0.5%), tests_pri_-1000: 3.9 (1.1%), tests_pri_-950: 1.34 (0.4%),
        tests_pri_-900: 1.07 (0.3%), tests_pri_-90: 22 (6.4%), check_bayes: 21
        (5.9%), b_tokenize: 7 (2.0%), b_tok_get_all: 7 (2.1%), b_comp_prob:
        2.1 (0.6%), b_tok_touch_all: 2.1 (0.6%), b_finish: 0.59 (0.2%),
        tests_pri_0: 289 (83.0%), check_dkim_signature: 0.56 (0.2%),
        check_dkim_adsp: 2.3 (0.7%), poll_dns_idle: 0.67 (0.2%), tests_pri_10:
        2.5 (0.7%), tests_pri_500: 11 (3.3%), rewrite_mail: 0.00 (0.0%)
Subject: Re: pivot_root(".", ".") and the fchdir() dance
X-Spam-Flag: No
X-SA-Exim-Version: 4.2.1 (built Thu, 05 May 2016 13:38:54 -0600)
X-SA-Exim-Scanned: Yes (on in02.mta.xmission.com)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com> writes:

> Hello Christian,
>
>>> All: I plan to add the following text to the manual page:
>>>
>>>        new_root and put_old may be the same  directory.   In  particular,
>>>        the following sequence allows a pivot-root operation without need‐
>>>        ing to create and remove a temporary directory:
>>>
>>>            chdir(new_root);
>>>            pivot_root(".", ".");
>>>            umount2(".", MNT_DETACH);
>> 
>> Hm, should we mention that MS_PRIVATE or MS_SLAVE is usually needed
>> before the umount2()? Especially for the container case... I think we
>> discussed this briefly yesterday in person.
> Thanks for noticing. That detail (more precisely: not MS_SHARED) is
> already covered in the numerous other changes that I have pending
> for this page:
>
>        The following restrictions apply:
>        ...
>        -  The propagation type of new_root and its parent mount must  not
>           be MS_SHARED; similarly, if put_old is an existing mount point,
>           its propagation type must not be MS_SHARED.

Ugh.  That is close but not quite correct.

A better explanation:

    The pivot_root system call will never propagate any changes it makes.
    The pivot_root system call ensures this is safe by verifying that
    none of put_old, the parent of new_root, and parent of the root directory
    have a propagation type of MS_SHARED.

>

The concern from our conversation at the container mini-summit was that
there is a pathology if in your initial mount namespace all of the
mounts are marked MS_SHARED like systemd does (and is almost necessary
if you are going to use mount propagation), that if new_root itself
is MS_SHARED then unmounting the old_root could propagate.

So I believe the desired sequence is:

>>>            chdir(new_root);
+++            mount("", ".", MS_SLAVE | MS_REC, NULL);
>>>            pivot_root(".", ".");
>>>            umount2(".", MNT_DETACH);

The change to new new_root could be either MS_SLAVE or MS_PRIVATE.  So
long as it is not MS_SHARED the mount won't propagate back to the
parent mount namespace.

Eric


