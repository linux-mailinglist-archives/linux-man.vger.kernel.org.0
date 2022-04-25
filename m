Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5281650E9FF
	for <lists+linux-man@lfdr.de>; Mon, 25 Apr 2022 22:18:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243717AbiDYUVy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Apr 2022 16:21:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245174AbiDYUVx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Apr 2022 16:21:53 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 498CF457B0
        for <linux-man@vger.kernel.org>; Mon, 25 Apr 2022 13:18:47 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id k2so2033491wrd.5
        for <linux-man@vger.kernel.org>; Mon, 25 Apr 2022 13:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=OrpAt4ySZKon07kgE4EBsJV4wilWIIXGT1PdNZfzn5w=;
        b=hHqlYuHMt6UGueWGqQd7FFtrrwj9AHywx/RJ8c5TQCOlm6C8dUepP2a9+NpVIww0AQ
         83xZNpnHucOFiMFBgUFnZgeJXARjNRvHKRTn3a/jmJxSVaLAks6zw7ThyN9VZl5utEYl
         DvEfzyVX56YXp0Ka6KiFU/zRqh5O1PatwBDfRzusEtaZC44RAhUKtFeUOCzW2DZFxbO3
         2ZPK5RbKQLUB6ZV1c5zXyO6I8ZDQOuUbuo4lgAv0pkZXkwv8Z+c8yob/iiHhYBzJAXmb
         rrA4lkKx/LyrOgSarsESH5tcLBkUd/J8bE1zc2ci7Lv+xT+vImL4sRywS7BXZ7qNCXGr
         A2cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=OrpAt4ySZKon07kgE4EBsJV4wilWIIXGT1PdNZfzn5w=;
        b=BrONpMH+pSVFQtBnwhDLRmfZlPWFoXAWZK0gSF94AjyEmZyT+J7XO6ghZAkeD3oMRV
         8MCxtnPAoZNkgKXQjquqUnOvlDEl8xbz9Kd5aFsUW3/AurZALHE7J1CRCNEI+2CPAGRs
         tl7mrAXjU7Ptan8lC+vrdkwIlKJ3VSegzyLOUl39zcVAKo5tBi35BrHRU6+Fjh4p47rP
         PFmvjyeQJlIXU9BOOuMchGHDnHtkr/5aSwU4XNlcoZwCqEMAvFl30tW+jD/1SryzGtLr
         k3UDvuJ3QohR2DU4CL1hc15VEW9YWQRBcD+fXuB+Go4ATzvc2oyhJ3eR6qpSarbBV8bJ
         7hlQ==
X-Gm-Message-State: AOAM532AQuivGnJ75hkO6d0oCTHrZcp22vELjLG9nNZh06aWDdBz0Mpl
        WMG2vdftYtK2Vo7Eym2WADarL5dDL/XtHg==
X-Google-Smtp-Source: ABdhPJyoZLkE0SNnG3oMckWGYGTi8zDWO94sWjDBy9H1M3NgT4UoxICiRiS/uv6woNH0cKgwJ5QZKw==
X-Received: by 2002:a05:6000:1786:b0:20a:873b:24e5 with SMTP id e6-20020a056000178600b0020a873b24e5mr15690442wrg.427.1650917925679;
        Mon, 25 Apr 2022 13:18:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q3-20020adfab03000000b0020ad57b8ddesm6422386wrc.101.2022.04.25.13.18.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 13:18:45 -0700 (PDT)
Message-ID: <59a8d8b5-fc96-812f-c3b1-d1dca66dca3a@gmail.com>
Date:   Mon, 25 Apr 2022 22:18:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v3] fanotify: Document FAN_REPORT_PIDFD Feature
Content-Language: en-US
To:     Matthew Bobrowski <repnop@google.com>
Cc:     linux-man@vger.kernel.org, jack@suse.cz, amir73il@gmail.com,
        mtk.manpages@gmail.com
References: <9ab0575162eada7a3f73de71c06e1031b9e51bbe.1649718997.git.repnop@google.com>
 <f40ff271-a18e-9833-f858-9abf3bb19cd2@gmail.com>
 <YldfdNebVVzwqxw9@google.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <YldfdNebVVzwqxw9@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Matthew,

On 4/14/22 01:40, Matthew Bobrowski wrote:
> Haha, I created this patch using one of Amir's branches, as he
> performed a rebase and handled some conflicts. It must've preserved
> the display name "Amir Goldstein" in the "From:" header...

:)

> 
> On Wed, Apr 13, 2022 at 08:24:21PM +0200, Alejandro Colomar wrote:
>> Hi Amir!
>>
>> On 4/12/22 01:17, Amir Goldstein wrote:
>>> Update the fanotify API documentation to include details on the new
>>> FAN_REPORT_PIDFD feature. This patch also includes a generic section
>>> describing the concept of information records which are supported by
>>> the fanotify API.
>>>
>>> Signed-off-by: Matthew Bobrowski <repnop@google.com>
>>> Reviewed-by: Jan Kara <jack@suse.cz>
>>> Reviewed-by: Amir Goldstein <amir73il@gmail.com>
>>
>> Thanks for the patch.  Please see some comments below.
> 
> Thanks for the review, I'll update and send through a follow up patch
> shortly. I left a question on your comment about the use of semantic
> newlines. I wasn't sure whether that comment was a general rule that
> is to be applied across this entire patch (in which it definitely can,
> I just wasn't aware of the rule prior to you explicitly pointing it
> out), or whether there was a specific example you were referring to in
> the code block directly above your comment.

General rule to be applied across the entire patch, if you do the 
favour.  I just mentioned it at a point where it is clear that it could 
be applied, to give some context.

Thank you,

Alex

> 
>>> ---
>>>    man2/fanotify_init.2 |  34 +++++++
>>>    man7/fanotify.7      | 208 +++++++++++++++++++++++++++++++++++--------
>>>    2 files changed, 204 insertions(+), 38 deletions(-)
>>>
>>> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
>>> index 7f9a21a52..1e4691c88 100644
>>> --- a/man2/fanotify_init.2
>>> +++ b/man2/fanotify_init.2
>>> @@ -283,6 +283,40 @@ for additional details.
>>>    This is a synonym for
>>>    .RB ( FAN_REPORT_DIR_FID | FAN_REPORT_NAME ).
>>>    .PP
>>> +.TP
>>> +.BR FAN_REPORT_PIDFD " (since Linux 5.15)"
>>> +.\" commit af579beb666aefb17e9a335c12c788c92932baf1
>>> +Events for fanotify groups initialized with this flag will contain an
>>> +additional information record alongside the generic
>>> +.I fanotify_event_metadata
>>> +structure.
>>> +This information record will be of type
>>> +.B FAN_EVENT_INFO_TYPE_PIDFD
>>> +and will contain a pidfd for the process that was responsible for
>>> +generating an event.
>>> +A pidfd returned in this information record object is no different
>>> +to the pidfd that is returned when calling
>>> +.BR pidfd_open(2) .
>>
>> Misplaced space.  Should be:
>>
>> .BR pidfd_open (2).
>>
>>> +Usage of this information record are for applications that may be
>>> +interested in reliably determining whether the process responsible for
>>> +generating an event has been recycled or terminated.
>>> +The use of the
>>> +.B FAN_REPORT_TID
>>> +flag along with
>>> +.B FAN_REPORT_PIDFD
>>> +is currently not supported and attempting to do so will result in the
>>> +error

s.n.

>>> +.B EINVAL
>>> +being returned.
>>> +This limitation is currently imposed by the pidfd API as it currently
>>> +only supports the creation of pidfds for thread-group
>>> +leaders.
>>
>> Please use semantic newlines.
>> See man-pages(7):
>>
>>     Use semantic newlines
>>         In the source of a manual page, new sentences  should  be
>>         started on new lines, long sentences should be split into
>>         lines at clause breaks (commas, semicolons,  colons,  and
>>         so on), and long clauses should be split at phrase bound-
>>         aries.  This convention,  sometimes  known  as  "semantic
>>         newlines",  makes it easier to see the effect of patches,
>>         which often operate at the level of individual sentences,
>>         clauses, or phrases.
> 
> Fair point. Based on the above change block, I assume you're referring
> to the the word "leaders" starting on a new line? The rest appears to
> be inline with what's expected of semantic newlines?

I wrote "s.n." in the more grievous cases where semantic newlines could 
be improved.

Don't worry too much about it if you can't see some of the lines.  Just 
do some cleanup, and I'll continue from there.  Thanks.

> 
>>> +Creating pidfds for non-thread-group leaders may be supported at some
>>> +point in the future, so this restriction may eventually be

s.n.

>>> +lifted.
>>> +For more details on information records, see
>>> +.BR fanotify(7) .
>>
>> Misplaced space.  Should be:
>>
>> .BR fanotify (7).
>>
>>> +.PP
>>>    The
>>>    .I event_f_flags
>>>    argument
>>> diff --git a/man7/fanotify.7 b/man7/fanotify.7
>>> index f8345b3f5..57dd2b040 100644
>>> --- a/man7/fanotify.7
>>> +++ b/man7/fanotify.7
>>> @@ -118,16 +118,6 @@ until either a file event occurs or the call is interrupted by a signal
>>>    (see
>>>    .BR signal (7)).
>>>    .PP
>>> -The use of one of the flags
>>> -.BR FAN_REPORT_FID ,
>>> -.B FAN_REPORT_DIR_FID
>>> -in
>>> -.BR fanotify_init (2)
>>> -influences what data structures are returned to the event listener for each
>>> -event.
>>> -Events reported to a group initialized with one of these flags will
>>> -use file handles to identify filesystem objects instead of file descriptors.
>>> -.PP
>>>    After a successful
>>>    .BR read (2),
>>>    the read buffer contains one or more of the following structures:
>>> @@ -146,20 +136,63 @@ struct fanotify_event_metadata {
>>>    .EE
>>>    .in
>>>    .PP
>>> -In case of an fanotify group that identifies filesystem objects by file
>>> -handles, you should also expect to receive one or more additional information
>>> -records of the structure detailed below following the generic
>>> +Information records are supplemental pieces of information that may be
>>> +provided alongside the generic
>>> +.I fanotify_event_metadata
>>> +structure.
>>> +The
>>> +.I flags
>>> +passed to
>>> +.BR fanotify_init (2) > +have influence over the type of information records that may be returned
>>> +for an event.
>>> +For example, if a notification group is initialized with
>>> +.B FAN_REPORT_FID
>>> +or
>>> +.BR FAN_REPORT_DIR_FID ,
>>> +then event listeners should also expect to receive a
>>> +.I fanotify_event_info_fid
>>> +structure alongside the
>>> +.I fanotify_event_metadata
>>> +structure, whereby file handles are used to identify filesystem
>>> +objects rather than file descriptors.

s.n.

>>> +Information records may also be stacked, meaning that using the
>>> +various

s.n.

>>> +.B FAN_REPORT_*
>>> +flags in conjunction with one another is supported.
>>> +In such cases, multiple information records can be returned for an
>>> +event alongside the generic
>>> +.I fanotify_event_metadata
>>> +structure.
>>> +For example, if a notification group is initialized with
>>> +.B FAN_REPORT_FID
>>> +and
>>> +.BR FAN_REPORT_PIDFD ,
>>> +then an event listener should also expect to receive both
>>> +.I fanotify_event_info_fid
>>> +and
>>> +.I fanotify_event_info_pidfd
>>> +structures alongside the generic
>>> +.I fanotify_event_metadata
>>> +structure.
>>> +Importantly, fanotify provides no guarantee around the ordering of
>>> +information records when a notification group is intialized with a
>>> +stacked based configuration.
>>> +Each information record has a nested structure of type
>>> +.IR fanotify_event_info_header .
>>> +It is imperative for event listeners to inspect the
>>> +.I info_type
>>> +field of this structure in order to determine the type of information
>>> +record that had been received for a given event.

s.n.

>>> +.PP
>>> +In cases where an fanotify group identifies filesystem objects by file
>>> +handles, event listeners should also expect to receive one or more of

s.n.

>>> +the below information record objects alongside the generic
>>>    .I fanotify_event_metadata
>>>    structure within the read buffer:
>>>    .PP
>>>    .in +4n
>>>    .EX
>>> -struct fanotify_event_info_header {
>>> -    __u8 info_type;
>>> -    __u8 pad;
>>> -    __u16 len;
>>> -};
>>> -
>>>    struct fanotify_event_info_fid {
>>>        struct fanotify_event_info_header hdr;
>>>        __kernel_fsid_t fsid;
>>> @@ -168,6 +201,40 @@ struct fanotify_event_info_fid {
>>>    .EE
>>>    .in
>>>    .PP
>>> +In cases where an fanotify group is initialized with
>>> +.BR FAN_REPORT_PIDFD ,
>>> +event listeners should expect to receive the below information record
>>> +object alongside the generic

s.n.

>>> +.I fanotify_event_metadata
>>> +structure within the read buffer:
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +struct fanotify_event_info_pidfd {
>>> +        struct fanotify_event_info_header hdr;
>>> +        __s32 pidfd;
>>> +};
>>> +.EE
>>> +.in
>>> +.PP
>>> +All information records contain a nested structure of type
>>> +.IR fanotify_event_info_header .
>>> +This structure holds meta-information about the information record
>>> +that may have been returned alongside the generic
>>> +.I fanotify_event_metadata
>>> +structure.
>>> +This structure is defined as follows:
>>> +.PP
>>> +.in +4n
>>> +.EX
>>> +struct fanotify_event_info_header {
>>> +	__u8 info_type;
>>> +	__u8 pad;
>>> +	__u16 len;
>>> +};
>>> +.EE
>>> +.in
>>> +.PP
>>>    For performance reasons, it is recommended to use a large
>>>    buffer size (for example, 4096 bytes),
>>>    so that multiple events can be retrieved by a single
>>> @@ -385,6 +452,48 @@ The
>>>    flag is reported in an event mask only if the fanotify group identifies
>>>    filesystem objects by file handles.
>>>    .PP
>>> +Information records that are supplied alongside the generic
>>> +.I fanotify_event_metadata
>>> +structure will always contain a nested structure of type
>>> +.IR fanotify_event_info_header .
>>> +The fields of the
>>> +.I fanotify_event_info_header
>>> +are as follows:
>>> +.TP
>>> +.I info_type
>>> +A unique integer value representing the type of information record
>>> +object received for an event.

s.n.

>>> +The value of this field can be set to one of the following:
>>> +.BR FAN_EVENT_INFO_TYPE_FID ,
>>> +.BR FAN_EVENT_INFO_TYPE_DFID ,
>>> +.B FAN_EVENT_INFO_TYPE_DFID_NAME
>>> +or
>>> +.BR FAN_EVENT_INFO_TYPE_PIDFD .
>>
>> Use Oxford-style commas.  See:
>>
>> $ git show 3ded684c1a4b6104e1d4b7400015f8bf76dc75b9 | head -n25
>> commit 3ded684c1a4b6104e1d4b7400015f8bf76dc75b9
>> Author: Michael Kerrisk <mtk.manpages@gmail.com>
>> Date:   Sat Jan 9 11:14:08 2021 +0100
>>
>>      Various pages: tfix (Oxford comma)
>>
>>      Found using:
>>
>>          git grep -lE '^[^.].*,.*,.*[^,] (and|or)\>'
>>
>>      Signed-off-by: Michael Kerrisk <mtk.manpages@gmail.com>
>>
>> diff --git a/man1/intro.1 b/man1/intro.1
>> index 57023b652..9bf7190df 100644
>> --- a/man1/intro.1
>> +++ b/man1/intro.1
>> @@ -220,7 +220,7 @@ and
>>   .I pwd
>>   commands and explore
>>   .I cd
>> -usage: "cd", "cd .", "cd ..", "cd /" and "cd \(ti".
>> +usage: "cd", "cd .", "cd ..", "cd /", and "cd \(ti".
>>   .SS Directories
>>   The command
>>   .I mkdir
>>
>>
>>> +The value set for this field is dependent on the flags that have been
>>> +supplied to
>>> +.BR fanotify_init (2) .
>>
>> Spurious space.  Should be:
>>
>> .BR fanotify_init (2).
>>
>>> +Refer to the field details of each information record object type
>>> +below to understand the different cases in which the
>>> +.I info_type
>>> +values can be set.
>>> +.TP
>>> +.I pad
>>> +This field is currently not used by any information record object type
>>> +and therefore is set to zero.
>>> +.TP
>>> +.I len
>>> +The value of
>>> +.I len
>>> +is set to the size of the information record object, including the
>>> +.IR fanotify_event_info_header .
>>> +The total size of all additional information records is not expected
>>> +to be larger than
>>> +(
>>> +.I event_len
>>> +\-
>>> +.I metadata_len
>>> +).
>>
>> The above can be simplified to:
>>
>> .RI ( event_len
>> \-
>> .IR metadata_len ).
>>
>>> +.PP
>>>    The fields of the
>>>    .I fanotify_event_info_fid
>>>    structure are as follows:
>>> @@ -392,8 +501,6 @@ structure are as follows:
>>>    .I hdr
>>>    This is a structure of type
>>>    .IR fanotify_event_info_header .
>>> -It is a generic header that contains information used to describe an
>>> -additional information record attached to the event.
>>>    For example, when an fanotify file descriptor is created using
>>>    .BR FAN_REPORT_FID ,
>>>    a single information record is expected to be attached to the event with
>>> @@ -414,23 +521,6 @@ identifying a parent directory object, and one with
>>>    field value of
>>>    .BR FAN_EVENT_INFO_TYPE_FID ,
>>>    identifying a non-directory object.
>>> -The
>>> -.I fanotify_event_info_header
>>> -contains a
>>> -.I len
>>> -field.
>>> -The value of
>>> -.I len
>>> -is the size of the additional information record including the
>>> -.I fanotify_event_info_header
>>> -itself.
>>> -The total size of all additional information records is not expected
>>> -to be bigger than
>>> -(
>>> -.I event_len
>>> -\-
>>> -.I metadata_len
>>> -).
>>>    .TP
>>>    .I fsid
>>>    This is a unique identifier of the filesystem containing the object
>>> @@ -498,6 +588,48 @@ and the file handle is followed by a null terminated string that identifies the
>>>    name of a directory entry in that directory, or '.' to identify the directory
>>>    object itself.
>>>    .PP
>>> +The fields of the
>>> +.I fanotify_event_info_pidfd
>>> +structure are as follows:
>>> +.TP
>>> +.I hdr
>>> +This is a structure of type
>>> +.IR fanotify_event_info_header .
>>> +When an fanotify group is initialized using
>>> +.BR FAN_REPORT_PIDFD ,
>>> +the
>>> +.I info_type
>>> +field value of the
>>> +.I fanotify_event_info_header
>>> +is set to
>>> +.BR FAN_EVENT_INFO_TYPE_PIDFD .
>>> +.TP
>>> +.I pidfd
>>> +This is a process file descriptor that refers to the process
>>> +responsible for generating the event.
>>> +The returned process file descriptor is no different from one which
>>> +could be obtained manually if
>>> +.BR pidfd_open(2)
>>
>> Missing a space before "(2)".
>>
>>> +were to be called on
>>> +.IR fanotify_event_metadata.pid .
>>> +In the instance that an error is encountered during pidfd creation for
>>> +one of two possible error types represented by a negative integer
>>> +value may be returned in this

s.n.

>>> +.I pidfd
>>> +field.
>>> +In cases where the process responsible for generating the event has
>>> +terminated prior to the event listener being able to read events from the
>>> +notification queue,
>>> +.B FAN_NOPIDFD
>>> +is returned.
>>> +The pidfd creation for an event is only performed at the time the
>>> +events are read from the notification queue.
>>> +All other possible pidfd creation failures are represented by
>>> +.BR FAN_EPIDFD .
>>> +Once the event listener has dealt with an event and the pidfd is no
>>> +longer required, the pidfd should be closed via

s.n.

>>> +.BR close(2) .
>>
>> Space is misplaced.  Should be:
>>
>> .BR close (2).
>>
>>> +.PP
>>>    The following macros are provided to iterate over a buffer containing
>>>    fanotify event metadata returned by a
>>>    .BR read (2)
> 
> /M
