Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0FA5767927
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 01:52:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232764AbjG1XwA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 19:52:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230274AbjG1Xv7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 19:51:59 -0400
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB5EB422B
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 16:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1690588315;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=o3B31JfIWhwnLkdZBfHroho2knrNW6Q1OMLuEi/FnoQ=;
        b=tCAnrbwh/D1EbRnd2RMgqRnfmGvtiNH+HGFI9SbNS4LHBb+LHBxhpLsyXenm50aFI2aQdr
        AAEs5R4vNq/4IglswHw0tMsRcg+yIBJKJRkslQ6tpo1yiHjoSwvN7El9EvnCY9V3BXLxY2
        IlKjBWLPUGh49F/pBOs4txuk4OXtOGQ=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id 0fa538da (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Fri, 28 Jul 2023 23:51:55 +0000 (UTC)
Received: by fluorine.ljabl.com (OpenSMTPD) with ESMTPA id a054d311;
        Sat, 29 Jul 2023 01:51:55 +0200 (CEST)
Date:   Fri, 28 Jul 2023 23:51:54 +0000
From:   Lennart Jablonka <humm@ljabl.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
Message-ID: <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        linux-man@vger.kernel.org
References: <ZMQVYtquNN-s0IJr@beryllium>
 <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>> A function can't check whether a pointer points to the start of a
>> string.  What it certainly can do is to keep reading until you either
>> find a null byte or read the secret key that lies adjacent in memory and
>> post it to your favorite mailing list.
>>
>> strlcpy and strlcat behave the exact same way any other function
>> accepting a string behaves:  If you don't pass a string, the behavior is
>> undefined.  And that, I believe, does not deserve a special mention
>> here, seeing as all the other string functions don't get such a mention
>> either.
>
>Hmm, you're right.
>
>What I intended to mean is that while most other functions --e.g.,
>strcpy(3)-- overwrite after the buffer, the design of strlcpy(3) is a
>bit more clever and makes it so that when the caller invokes UB, it
>tries to exploit that UB in a way that the input string is entirely
>read before starting to write, which makes it more likely to crash in
>a read, rather than writing to random memory (which might still happen
>if the read is not enough to crash, though).

I’m interested in where you got that from.  This is strlcpy:

	size_t
	strlcpy(char *dst, const char *src, size_t dsize)
	{
		const char *osrc = src;
		size_t nleft = dsize;

		/* Copy as many bytes as will fit. */
		if (nleft != 0) {
			/*
			 * <humm> This is where reading and
			 * writing take place.  src doesn’t get
			 * read entirely before writing begins.
			 */
			while (--nleft != 0) {
				if ((*dst++ = *src++) == '\0')
					break;
			}
		}

		/* Not enough room in dst, add NUL and traverse rest of src. */
		if (nleft == 0) {
			if (dsize != 0)
				*dst = '\0';		/* NUL-terminate dst */
			while (*src++)
				;
		}

		return(src - osrc - 1);	/* count does not include NUL */
	}

I don’t see what you mean in there.

>> The "definitions" at the top don't make it clear enough that they aren't
>> supposed to be precise definitions used in your usual C jargon; that
>> while string and a string's length and an object's size are defined
>> by C, and while you understand and sometimes use most of these terms,
>> there is no norm that says "When you talk about a pointer to one past
>> a buffer's last byte, you call it 'end'!"  That there is no norm that
>> says "When you say 'copy,' you write to the beginning, not to
>> elsewhere!"
>
>True.  My intention was to settle the jargon and pseudo-standardize
>these terms (of course in decades, not tomorrow).  Every other project
>uses a different term, and I'd like to unify.

I’m not quite sure yet what to think of that, but I do think you 
should mention that in the man page.  “Here are some terms; 
C defines ‘string,’ but you are invited to re-use all these 
terms—it’d be great if we were in unity, after all.”

>> Furthermore, the terminology around "character sequences" confused me
>> while reading the page.  When do you have a buffer, neither
>> null-terminated nor null-padded, that is defined not to contain null
>> bytes?
>
>NGINX uses these internally:
>
>$ grepc ngx_str_t
>./src/core/ngx_string.h:16:
>typedef struct {
>    size_t      len;
>    u_char     *data;
>} ngx_str_t;
>
>
>Basically it's a non-zero buffer plus its length.  They have interesting
>properties; for example, you can take a substring (or should I call it
>sub-sequence) just by taking a pointer to somewhere in the middle, and
>the length of the substring, without really copying the string.

same with a buffer without restriction of null bytes

>>  And how do functions behave that want a character sequence if
>> that does contain a null byte?  Do they take the null byte to signal the
>> character sequence's end?  Need they accept the null byte as part of the
>> character sequence?  Is the behavior undefined?
>
>NGINX handles these strings by the length stored in the buffer.  Any
>null byte in the middle of a string would be treated as any other
>character, although they would be problematic when interfacing libc; in
>general, care is taken to not have null bytes in those strings.  NGINX
>uses mempcpy(3) (or rather, ngx_cpymem(), which is the same thing) to
>copy these things, or other more sophisticated functions and macros
>based on mempcpy(3).
>
>$ grepc ngx_cpymem
>./src/core/ngx_string.h:97:
>#define ngx_cpymem(dst, src, n)   (((u_char *) ngx_memcpy(dst, src, n)) + (n))
>
>
>./src/core/ngx_string.h:107:
>#define ngx_cpymem(dst, src, n)   (((u_char *) memcpy(dst, src, n)) + (n))

I think if you want to pseudo-standardize terminology, you should 
mention how functions are supposed to behave when seeing a null 
byte in a character sequence.  (I plead for undefined behavior.)

Now, do you think character sequences are more common than simple 
buffers, than not caring at all about the specific bytes?  That’s 
what I do; that’s what I think should be usually done.  And do you 
suppose character sequences are more valuable than simple buffers?  
Sure, iff the sequences are null-terminated, you can use them as 
strings, too, but that doesn’t seem like much of a benefit.

>> And lastly, the man page doesn't list the functions' standards or who
>> invented them.
>
>That was deliberate.  The specific pages of each of those functions
>already documents that.  Since the intention was to differentiate the
>use cases of each of the functions, I believe mentioning the standards
>would just deviate from that main point, and so I omitted that info.
>The point is that choosing one of these functions shouldn't depend on
>what standards are available to the programmer.  Instead, the
>programmer should use the appropriate function, and then if it's not
>available, it should be written within the project (probably as a
>wrapper around other functions) to be able to use it.  That's why I
>provided some naive implementations of some of them.

That’s not a bad idea, but for some functions, this is the man 
page.  I wondered where stpecpy comes from, I tried to open 
stpecpy(3), I got string_copying(7).
