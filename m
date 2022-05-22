Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C91115303E4
	for <lists+linux-man@lfdr.de>; Sun, 22 May 2022 17:44:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239300AbiEVPoP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 May 2022 11:44:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231847AbiEVPoO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 May 2022 11:44:14 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9EF63668B
        for <linux-man@vger.kernel.org>; Sun, 22 May 2022 08:44:12 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id n6so7134263wms.0
        for <linux-man@vger.kernel.org>; Sun, 22 May 2022 08:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Yh/LGXjPiIUuhnw3CCxpEEQomH0fGFIh3z1o79k7ctI=;
        b=Pw4R7HX8UHYZ4owW86OP21gjGgVgcwbFHlN1Qysd7fv0pd6LD0oG+l+nllZKdMNEv/
         WkJWpaK/vHnZxpqnOKNsn3SI5UYvQuKSPD2ygjsu6N8OcW8DBMgxFO0IAa4Okj8IEJGP
         FSGAXLePs3X1iPeUFRoaM63b9G1pOrwUL+8D7xgtYdZPIeRe2FF3xbPet6rY+devAeqa
         wn/mj1m2Cx4vx1yMjlD88wslddrBmh6nqv2E/oMGynsk2nY9cPuYMqok+n/LxynGfHni
         ah18N80AsVwSteR/fxNDpPtxZDRSz5BewxE9M+Xlv5V/4z77NWos8+8Bw6xjZkYUyIeE
         SwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Yh/LGXjPiIUuhnw3CCxpEEQomH0fGFIh3z1o79k7ctI=;
        b=uWs9PQLbO1D9VxxZfmWX8T2IhCkJShOrlaX1a9d2TlpaBu9chRtk5QVSur15fff+8M
         B015CF8Q9Aw+XAY5xeCUkbKcJzRmA+FvPQ4lO7MmtWC1oNEUtP55rvXPfARA0NORKEP9
         3B0JRuJ+G7oFu97/72W72IvoJNM+XJinr9xuRGU7f8CeCu4ggZgFCWYWg5hAhW+k8fuu
         2kcsYPgP0ylYX8nhtKzraX2pGBAXwZsFYNtUamzeJnvvs6VTsRFCBJFza9ClDd2dQYeZ
         9obhBYNRbjHS4oOpvobd9yp86DJjNLIA8Fh7MseUHE64gUmnaWSoFw8F3TUo3xTubHty
         hsUw==
X-Gm-Message-State: AOAM533q7HF74GlxTbnWZBCPBATf0Ai5UwKpP2oHXidQM1/drPTA12A7
        L0dSfvOmgBRyoGdkvc/fwWw=
X-Google-Smtp-Source: ABdhPJwX8893gu9qFw/fwtCAd2ryoKBSFTv4IRzbAuTSPFeN2/RBG9SDIfik+akyC8ABTJ9iv0BMwQ==
X-Received: by 2002:a05:600c:4f52:b0:394:61af:a168 with SMTP id m18-20020a05600c4f5200b0039461afa168mr16827352wmq.114.1653234251358;
        Sun, 22 May 2022 08:44:11 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m7-20020a7bca47000000b0039429bfebebsm7474382wml.3.2022.05.22.08.44.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 May 2022 08:44:10 -0700 (PDT)
Message-ID: <77ebe2f4-461a-4c3c-d53e-7a4c1f94e506@gmail.com>
Date:   Sun, 22 May 2022 17:44:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH RESEND v5] fanotify.7, fanotify_mark.2: Document
 FAN_FS_ERROR
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
Cc:     linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <repnop@google.com>
References: <20220520180935.37796-1-krisman@collabora.com>
 <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAOQ4uxjd-xKz1=Z+165s4hX0aiBsbui2_+JAqaGr0AT0z5+scg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On 5/21/22 08:40, Amir Goldstein wrote:
> [adding correct address of Alejandro]

Thanks!

> 
> On Fri, May 20, 2022 at 9:09 PM Gabriel Krisman Bertazi
> <krisman@collabora.com> wrote:
>>
>> FAN_FS_ERROR is a new event for fanotify to report filesystem errors
>> that might lead to some corruption.
>> This documents how to use the feature and specific caveats.
>>
>> Reviewed-by: Jan Kara <jack@suse.cz>
>> Reviewed-by: Amir Goldstein <amir73il@gmail.com>
>> Reviewed-by: Matthew Bobrowski <repnop@google.com>
>> Signed-off-by: Gabriel Krisman Bertazi <krisman@collabora.com>

Please check a few minor formatting issues below.
Other than that, looks good to me.

However, it seems that I'm missing some patch, as I can't apply it to my 
tree.  Should I apply any other patch before this?
It doesn't apply on top of the kernel.org master branch either (but 
don't use that one as reference, since it's quite old).

Thanks,

Alex

>>
>> ---
>> as discussed this is rebased on top of the PIDFD documentation: commit
>> 207080c7f7f5 ("fanotify: Document FAN_REPORT_PIDFD Feature")
> 
> Which commit is that? From my tree?
> Anyway, I see that Matthew has posted v4 since and Alejandro followed with v5.
> 
> Pushed v5 to fanotify_pidfd branch in my tree [1]
> and this patch of yours (applies with no conflicts) to branch
> fan-fs-error in my tree.
> 
> I also pushed branches fanotify_target_fid and fan_rename with a minor
> update to include ENOTDIR error that was added in v5.18-rc7 and v5.17.9.
> 
> Matthew, the ENOTDIR change is minor so I kept your Reviewed-by.
> Please ACK.
> 
> Thanks,
> Amir.
> 
> [1] https://github.com/amir73il/man-pages
> 
> 
> 
>>
>> changes since v5:
>>   (matthew)
>>   - typo fix
>>
>> changes since v4:
>>   (Matthew)
>>   - Grammar fixes
>>   - Reword sections
>>   (Jan)
>>   - Explain fs error only apply to some errors
>>   (Amir)
>>   - Clarify what supported by ext4 means.
>>
>> Changes since v3:
>>   (Matthew)
>>   - Rewording and fixes from github)
>>   (amir)
>>   - 5.15 -> 5.16
>>
>> Changes since v2:
>>    (matthew)
>>      - Grammar
>>      - List filesystems that support the feature
>>      - file system -> filesystem
>> Changes since v1:
>> (Matthew)
>>    - Grammar fixes
>>    - Don't use the term "submitted" for events sent to the listener
>>    - Clarify the kind of information that is file system specific
>> ---
>>   man2/fanotify_mark.2 | 30 +++++++++++++++++++++
>>   man7/fanotify.7      | 64 ++++++++++++++++++++++++++++++++++++++++++++
>>   2 files changed, 94 insertions(+)
>>
>> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
>> index 9a45cbb77893..3dc538b7f84b 100644
>> --- a/man2/fanotify_mark.2
>> +++ b/man2/fanotify_mark.2
>> @@ -203,6 +203,29 @@ Create an event when a marked file or directory itself is deleted.
>>   An fanotify group that identifies filesystem objects by file handles
>>   is required.
>>   .TP
>> +.BR FAN_FS_ERROR " (since Linux 5.16)"
>> +.\" commit 9709bd548f11a092d124698118013f66e1740f9b
>> +Create an event when a filesystem error
>> +leading to inconsistent filesystem metadata is detected.
>> +An additional information record of type
>> +.B FAN_EVENT_INFO_TYPE_ERROR
>> +is returned for each event in the read buffer.
>> +An fanotify group that identifies filesystem objects by file handles
>> +is required.
>> +.IP
>> +Events of such type are dependent on support
>> +from the underlying filesystem.
>> +At the time of writing,
>> +only the
>> +.B ext4
>> +filesystem reports
>> +.B FAN_FS_ERROR
>> +events.
>> +.IP
>> +See
>> +.BR fanotify (7)
>> +for additional details.
>> +.TP
>>   .BR FAN_MOVED_FROM " (since Linux 5.1)"
>>   .\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
>>   Create an event when a file or directory has been moved from a marked
>> @@ -391,6 +414,13 @@ and mask contains a flag for permission events
>>   or
>>   .BR FAN_ACCESS_PERM ).
>>   .TP
>> +.B EINVAL
>> +The group was initialized without
>> +.B FAN_REPORT_FID
>> +but one or more event types specified in the
>> +.I mask
>> +require it.
>> +.TP
>>   .B ENODEV
>>   The filesystem object indicated by
>>   .I pathname
>> diff --git a/man7/fanotify.7 b/man7/fanotify.7
>> index 57dd2b040380..3dc4113a551c 100644
>> --- a/man7/fanotify.7
>> +++ b/man7/fanotify.7
>> @@ -217,6 +217,25 @@ struct fanotify_event_info_pidfd {
>>   .EE
>>   .in
>>   .PP
>> +In case of a
>> +.B FAN_FS_ERROR
>> +event,
>> +an additional information record describing the error that occurred
>> +is returned alongside the generic
>> +.I fanotify_event_metadata
>> +structure within the read buffer.
>> +This structure is defined as follows:
>> +.PP
>> +.in +4n
>> +.EX
>> +struct fanotify_event_info_error {
>> +    struct fanotify_event_info_header hdr;
>> +    __s32 error;
>> +    __u32 error_count;
>> +};
>> +.EE
>> +.in
>> +.PP
>>   All information records contain a nested structure of type
>>   .IR fanotify_event_info_header .
>>   This structure holds meta-information about the information record
>> @@ -358,6 +377,9 @@ A child file or directory was deleted in a watched parent.
>>   .B FAN_DELETE_SELF
>>   A watched file or directory was deleted.
>>   .TP
>> +.B FAN_FS_ERROR
>> +A filesystem error was detected.
>> +.TP
>>   .B FAN_MOVED_FROM
>>   A file or directory has been moved from a watched parent directory.
>>   .TP
>> @@ -630,6 +652,25 @@ Once the event listener has dealt with an event and the pidfd is no
>>   longer required, the pidfd should be closed via
>>   .BR close(2) .
>>   .PP
>> +The fields of the
>> +.I fanotify_event_info_error
>> +structure are as follows:
>> +.TP
>> +.I hdr
>> +This is a structure of type
>> +.IR fanotify_event_info_header .
>> +The
>> +.I info_type
>> +field is set to
>> +.BR FAN_EVENT_INFO_TYPE_ERROR .
>> +.TP
>> +.I error
>> +Identifies the type of error that occurred.
>> +.TP
>> +.I error_count
>> +This is a counter of the number of errors suppressed
>> +since the last error was read.
>> +.PP
>>   The following macros are provided to iterate over a buffer containing
>>   fanotify event metadata returned by a
>>   .BR read (2)
>> @@ -719,6 +760,29 @@ field.
>>   In that case, the audit subsystem will log information about the access
>>   decision to the audit logs.
>>   .\"
>> +.SS Monitoring filesystems for errors
>> +A single FAN_FS_ERROR event is stored per filesystem at once.

.B FAN_FS_ERROR

(also a few more times below)

>> +Extra error messages are suppressed and accounted for
>> +in the
>> +.I error_count
>> +field of the existing FAN_FS_ERROR event record,
>> +but details about the errors are lost.
>> +.PP
>> +Errors reported by FAN_FS_ERROR are generic errno values

.I errno

>> +but not all kinds of error types are reported by all filesystems.
>> +.PP
>> +Errors not directly related to a file (i.e. super block corruption)
>> +are reported with an invalid
>> +.IR file_handle .
>> +For these errors, the
>> +.I file_handle
>> +will have the field
>> +.I handle_type
>> +set to
>> +.BR FILEID_INVALID ,
>> +and the handle buffer size set to
>> +.BR 0 .
>> +.\"
>>   .SS Closing the fanotify file descriptor
>>   When all file descriptors referring to the fanotify notification group are
>>   closed, the fanotify group is released and its resources
>> --
>> 2.36.1
>>

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
