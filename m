Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54338769531
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 13:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231517AbjGaLs2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 07:48:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbjGaLs1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 07:48:27 -0400
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7C91A1
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 04:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1690804104;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Ywpgx9XNg2W6RLP1WsC2HxX4Kq8Pkioal70tAKaCbXA=;
        b=H1UIAprlxcRv7Nw7RSX+RzKv4D+FxX+M6WTdJxQaiFFFNeP9q7Wv0saQrUo5/+7XirECB6
        hDk7STYxro3IunubjdHpW6ayLIQhKTj5hFKaOXPL4Q4LbXGyoqReacNELTsDx1Si5AwAqM
        6eaGEIOZ+sarxQMaV25OiKg/GTvzQqU=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id 9892494d (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Mon, 31 Jul 2023 11:48:24 +0000 (UTC)
Received: by fluorine.ljabl.com (OpenSMTPD) with ESMTPA id bfb02aee;
        Mon, 31 Jul 2023 13:48:23 +0200 (CEST)
Date:   Mon, 31 Jul 2023 11:48:22 +0000
From:   Lennart Jablonka <humm@ljabl.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: Spaces in synopses of commands (was: [PATCH v3] time.1: ffix)
Message-ID: <ZMefhujNRqiKVR9a@fluorine.ljabl.com>
Mail-Followup-To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230730161304.ywc7jyz7hlbjqpsd@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Quoth G. Branden Robinson:
>> I'm referring to  [file ...] vs  [file...].
>
>Oh.  The point of this is that the arguments (operands in this case)
>remain whitespace-delimited, where it might not be the case for a
>repeatable single-letter option.
>
>foobar [-adX] [-v...] file ...
>foobar [-h | --help]
>
>  -v...  Be more verbose.  The option letter can be repeated, increasing
>         the verbosity level.
>
>"[-v ...]" would imply that only "-v -v -v" is allowed, instead of
>"-vvv".

Only if you can’t group options.   It is an issue that there are 
a few different options syntaxes and often, the specific one used 
is not documented.   I’d argue that’s acceptable for those 
utilities adhering to the POSIX Utility Syntax Guidelines;  that 
is, those that just use getopt.   And thus,

	foobar [-v ...]

	 -v ...  Be more verbose.  This options can be specified
	         multiple times to increase the verbosity level.

Makes it reasonably clear that you can make it very verbose by 
both -vvv and -v -v -v.

>I think this is a matter of achieving an accurate and unambiguous
>synopsis grammar.

Now, if you do not adhere to the guidelines—if you require -vvv or 
don’t allow grouping or both—you likely want a different synopsis 
syntax anyway:  Then, -asdf could be interpreted as “the 
single-dash long options asdf” and you shouldn’t write the short 
options as -adX.

None of this invalidates your explanation of ellipses and space 
therebefor.   But I don’t like your explanation.   Point is, 
I wouldn’t have gotten the idea of not putting a space there in 
the first place:  An ellipsis is most always delimited by spaces, 
in synopses as in prose.

Now, for opinions differing from yours:  In mdoc world, the 
ellipses frequently are part of the argument, as in

	.Ar path ...

and thus also italicized.   In POSIX, an ellipsis is not 
italicized and not delimited by spaces, as in

	p̲a̲t̲h̲...
	[-o f̲o̲r̲m̲a̲t̲]...
