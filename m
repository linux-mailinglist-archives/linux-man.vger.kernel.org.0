Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82E8B2B0F2D
	for <lists+linux-man@lfdr.de>; Thu, 12 Nov 2020 21:46:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726844AbgKLUqC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Nov 2020 15:46:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726621AbgKLUqC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Nov 2020 15:46:02 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16650C0613D1
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 12:46:02 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id 33so7429127wrl.7
        for <linux-man@vger.kernel.org>; Thu, 12 Nov 2020 12:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ux5q7lscyiirIci9HQnnOpAP6F9TiyYH3E0cLCCuWzc=;
        b=MmxdfUpvHtWx8WYy34xKb/njEgA4h0xtKshF+N9EWmzGBhcHy0yh7Yg2ZvPM6AWfQ0
         oJ2XciMRxI4B2U8/dwNUqUkNNjmbZiqbq7ZzZJVEfdODSz+FFKl1RRzME2BdpaNvXQOs
         ojfxytQ8ch6fkJWbURcV0fACWIWmczmjcdbhFQfVEZpzgHEcZKTtYDL1gDf04qqfkGS7
         PgxqDTzg/4GWjvhWlwSjQ2NCAAsQYgKKvduX/FSYVNFtBH1rXRNgH8KkcZV38ywCLi3J
         t68l0vGx8ar0MbTxk5K3fhInoZcJypBffC8MCJ8orFBIgRndQSet1Ixx0QqUOtbWqbR2
         LAaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ux5q7lscyiirIci9HQnnOpAP6F9TiyYH3E0cLCCuWzc=;
        b=EPEBShw7u4WgNJP2mkwxYbJ6/rlsjdE8oxwZHj3uRjDlxYz7ZSbKKluK/9n4yA8DwG
         qnXgqPdrFVSLwaxh661Gqzp3QODkDbj9sQHd/Q1pDhHCO0gTssQ5LkxVbSpa+7RYedb/
         gTTJDzgDTblBW0k0qTRBboEohehA6zuPDVqOIwNf/j/IA/gA/EM5bCQuhnqB9rTROMC5
         zBCMR6E5n8vncpHmRy4PJ0fV0/cgS/ToWZ8ZeMrv296u5qGTJniIcbQ2b1aCR52hfroQ
         asgq95zd/D+57UPsrw480L5TW/cgfyaLwRQRt11p+ZziYZMMaZByrMQlKPPpR+Wo8fUh
         GSXQ==
X-Gm-Message-State: AOAM532iKwunrXWIOLr4M+a2s6EeRJ6oLqUVgX3HSS8buJdbFUiJZow9
        NgxgwBLhWCbaQtp+KW3Z/j4=
X-Google-Smtp-Source: ABdhPJy8PCwQBuQCd0wIT5xWlcwutrx96pcr0KOMyuFv33KyXSB2A73Mqjlee+ZrlwcomIY1OldKuw==
X-Received: by 2002:a5d:4f0f:: with SMTP id c15mr1501247wru.287.1605213960837;
        Thu, 12 Nov 2020 12:46:00 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id v189sm8417382wmg.14.2020.11.12.12.45.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 12:45:59 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: sigaction.2: clarification for SA_NODEFER needed
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>, linux-man@vger.kernel.org
References: <e18cbe1f-5dcf-c717-5790-912af6bbfa41@gmx.de>
 <24b18d8a-84cf-17c6-12cf-f2d0c979b6ad@gmail.com>
 <70217a4d-9525-a186-4560-02216dd4546a@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <90f0f681-0770-9975-f370-415300d29fa9@gmail.com>
Date:   Thu, 12 Nov 2020 21:45:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <70217a4d-9525-a186-4560-02216dd4546a@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/12/20 5:25 PM, Heinrich Schuchardt wrote:

[...]

> Hello Michael,
> 
> this text is very helpful.
> 
> "Signal mask and pending signals" already mentions that the signal mask
> controls the blocking of signals. But maybe you could reiterate this in
> 1d) and in the note below 5).

Yes, that perhaps does not hurt. Some light tweaks:

   Execution of signal handlers
       Whenever  there is a transition from kernel-mode to user-mode exe‐
       cution (e.g., on return from a system  call  or  scheduling  of  a
       thread onto the CPU), the kernel checks whether there is a pending
       signal for which the process has established a signal handler.  If
       there is such a pending signal, the following steps occur:

       1. The  kernel performs the necessary preparatory steps for execu‐
          tion of the signal handler:

          a) The signal is removed from the set of pending signals.

          b) If the thread has defined an alternate signal  stack  (using
             sigaltstack(2)), then that stack is installed.

          c) Various  pieces  of  signal-related context are saved into a
             "hidden" frame that is created on the stack.  The saved  in‐
             formation includes:

             + the  program  counter  register  (i.e., the address of the
               next instruction in the main program that should  be  exe‐
               cuted when the signal handler returns);

             + the thread's current signal mask;

             + the thread's alternate signal stack settings.

          d) The  thread's  signal  mask is adjusted by adding the signal
             (unless the handler was  established  using  the  SA_NODEFER
             flag)  as  well  as  any  additional  signals  specified  in
             act->sa_mask when sigaction(2) was  called.   These  signals
             are thus blocked while the handler executes.

       2. The  kernel  constructs  a  frame for the signal handler on the
          stack.  Within that frame, the return address points to a piece
          of  user-space  code called the signal trampoline (described in
          sigreturn(2)).

       3. The kernel passes control back to user-space,  where  execution
          commences at the start of the signal handler function.

       4. When  the  signal handler returns, control passes to the signal
          trampoline code.

       5. The signal trampoline calls sigreturn(2), a  system  call  that
          uses the information in the "hidden" stack frame to restore the
          thread's signal mask and  alternate  stack  settings  to  their
          state before the signal handler was called.  Upon completion of
          the call to sigreturn(2), the kernel transfers control back  to
          user  space,  and the thread recommences execution at the point
          where it was interrupted by the signal handler.

       Note that if the signal handler does not return (e.g., control  is
       transferred  out  of  the  handler  using sigsetjmp(3) or swapcon‐
       text(3), or the handler executes a new  program  with  execve(2)),
       then the final step is not performed.  In particular, in such sce‐
       narios it is the programmer's responsibility to restore the  state
       of the signal mask, if it is desired unblock the signals that were
       blocked on entry to the signal handler.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
