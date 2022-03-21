Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD5074E1E59
	for <lists+linux-man@lfdr.de>; Mon, 21 Mar 2022 01:02:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244529AbiCUADm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 20:03:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236339AbiCUADm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 20:03:42 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C124180231
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 17:02:17 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id m30so8826931wrb.1
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 17:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qp93df9DkRI0vkLmO7nuDOu534s7nmZIJ4V2epyImGQ=;
        b=p6+NW7kPHFmKGrOMdpMA+EAvRKmP4tsE2WyPHvDDrlhTOFkvXNjmEBqGMmwIwpwks/
         bdrxpeX8m7rpPT8tanZnEigVL8suSzEdwStQYJsMjb82d7TQ/eVMxAfo9jxAgUV34rlg
         4LY2ge/O3PHohrr4o8JVz7ZK70W1mxXuuh3O1rAYvrWUloEgvzbN4ByEyw597GHyUGOp
         1BDHk5dimIl6SJO/PPC9pVioaUzmvD6N+lj36L05RC5IgB2bDIwseMrSIkcSv2lyaJab
         wcOho0PfZHoLHfW9swf7QSzPgcOrF4CsVRuFosxfK6EfyD38UXxUKqPCx4HZl+2h81Qm
         KGtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qp93df9DkRI0vkLmO7nuDOu534s7nmZIJ4V2epyImGQ=;
        b=OnVKD5Tbok/mcn3hThAafXN4MozT3KeDKkQN8BQANlpSOIjS6GN64/U3ysLY3ADm3g
         P0Pw4yzlmtMRhZJZl1d0dDyDeqgWSOml7W7i57vmsfrbtbzW9QW9eux92qOA4GWr2F9F
         890s3PPJEWM/ozCDTkKg3a5imZSA1TStVE912Y0yTpYVFzZP73Wyzg96rGSack8x7qBj
         47s+sMCDg78bY3hINO14ZzOrWStJ8YasTB2tiwf9ehMSfWnykHDXdNQgdTq2fh/uTZ7d
         nOT8SVv0HYpJQ10MRBbCHx6+Zg18QW8hjxVhLEPiRkRcJxNxcBIgOB0vZnC/ctU0+LSr
         ahsA==
X-Gm-Message-State: AOAM530pa/bN2Y972qgSPs7Nbb7F+RtjxdOueKtzHEMQIYInk7mmxZE0
        5dIJSrRkDz9dv5t8hpizMN9PnUYYgHV3i4o7
X-Google-Smtp-Source: ABdhPJxYKaD5tzGwXOxctEIRMw5KXCEFbtsYnYJpjCEbTYLnjmi1CnS5cHmIr1CKjcA7nS4ieM5pHQ==
X-Received: by 2002:adf:e343:0:b0:1f0:7a2:99f2 with SMTP id n3-20020adfe343000000b001f007a299f2mr17071615wrj.96.1647820935961;
        Sun, 20 Mar 2022 17:02:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id ay24-20020a05600c1e1800b00389a420e1ecsm12519467wmb.37.2022.03.20.17.02.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Mar 2022 17:02:15 -0700 (PDT)
Message-ID: <6c13326a-4c9d-0acb-b64e-07b18a01b502@gmail.com>
Date:   Mon, 21 Mar 2022 01:02:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: Exctracting source code from EXAMPLES
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>
References: <e4ea99a0-b65c-467f-047d-2cb466df86e7@gmail.com>
 <20220320232702.351b5832@heffalump.sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220320232702.351b5832@heffalump.sk2.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen!

On 3/20/22 23:27, Stephen Kitt wrote:
> Hi Alex,
> 
> On Sun, 20 Mar 2022 21:34:47 +0100, "Alejandro Colomar (man-pages)" 
> I’ve been working on something similar, slightly further along (the linting
> targets work).

I've been adding code for linting this evening too.  Currently I'm
compiling and linking the programs extracted.  I only did it with
membarrier.2 for now, and I've already fixed a line.

I also plan to add some static analyzers too, such as iwyu(1),
clang-tidy(1), or checkpatch.pl and some others.

You could check my 'lint' branch here:
<http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/log/?h=lint>

Compare that with what you have, and we can develop some mix of both.

With what I have, you need to run:

make build-src && make build-ld

> The extraction scripts could do with some improvement, but the
> Makefile changes are small:



> 
> # Check that example programs include in man pages really build
> Makefile.examples: $(MANPAGES)
> 	scripts/list-example-files $^ > $@
> 
> include Makefile.examples
> 
> # Sources are listed as well as objects to ensure we update all source files
> # CPPFLAGS and TARGET_ARCH are defined to avoid warnings
> .PHONY: check-example-programs
> check-example-programs: CFLAGS = -Wall
> check-example-programs: CPPFLAGS =
> check-example-programs: TARGET_ARCH =
> check-example-programs: $(EXAMPLE_SRCS) $(EXAMPLE_OBJS)
> 
> .PHONY: clean-example-programs
> clean-example-programs:
> 	rm -f $(EXAMPLE_SRCS) $(EXAMPLE_OBJS)
> 
> 
> scripts/list-example-files builds a separate Makefile to extract all the
> programs, which ends up looking like
> 
> /home/steve/man-pages/man1/memusage.c: /home/steve/man-pages/man1/memusage.1
> 	scripts/extract-example-files $<
> 
> /home/steve/man-pages/man1/prog.c /home/steve/man-pages/man1/libdemo.c: /home/steve/man-pages/man1/sprof.1
> 	scripts/extract-example-files $<

I like the idea of autogenerating and including a makefile, which allows
listing the example programs in the process.  In my current makefile, I
need to run make build-src before any further actions on those files,
since I don't know them at the time of setting variables.

I may take some bits from here.

> 
> 
> The scripts are attached. The patterns used to identify source code are close
> to those already present: .EX/.EE introduced by “Program source” (in which
> case the source code is extracted to a C file named after the man page) or by
> a
> 
> \." Example file
> 
> comment which can optionally name the file.

Those scripts seem a bit messy, due to the problem of not having a
standardized comment.  Are they reliable?  Or are there false negatives
or positives?

> 
> This has identified some more man pages which need fixes to their example
> code, I’ll send patches tomorrow.

Okay.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
