Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6A634D4F72
	for <lists+linux-man@lfdr.de>; Thu, 10 Mar 2022 17:38:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236698AbiCJQjT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Mar 2022 11:39:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236849AbiCJQjT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Mar 2022 11:39:19 -0500
X-Greylist: delayed 563 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 10 Mar 2022 08:38:16 PST
Received: from mx-rz-3.rrze.uni-erlangen.de (mx-rz-3.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::16])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 991AC154D3E
        for <linux-man@vger.kernel.org>; Thu, 10 Mar 2022 08:38:15 -0800 (PST)
Received: from mx-rz-smart.rrze.uni-erlangen.de (mx-rz-smart.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::1e])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by mx-rz-3.rrze.uni-erlangen.de (Postfix) with ESMTPS id 4KDvdX52hbz28Ns;
        Thu, 10 Mar 2022 17:28:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2021;
        t=1646929728; bh=GcUMPX/ogAczQTLK3sBU/KWT4LCxdlwB7BA8uHx04MI=;
        h=Date:To:From:Subject:From:To:CC:Subject;
        b=rfx+/xysJZh5C7khzIE2ydcKl9124fBY8t9yNDw9nGuDhVLku/xIf3U7TUqOj6Pe9
         62Q92kmbDae1dZ+oQNuXtAb04iuO5suBqY06pMqPTM6o7Rr0qJ5Pzw+Bag2gyeVxuD
         qLV7tm4Klcwmmpar77hD715pOCmiopDo6KaeijFPv4/UfP8GYoPl1tHoRAqW1VYPzL
         iWaWIhaluP1BGJHthEWCnuwcKIJIAVfAlZ7xYA1xi59jWkNYDatznEniECRt5uAGW0
         oi8w+c+dZFZ8YN+XhyNNC/xGbyPCCdmAAeKeZIoW2ShGWl9cWTp9zUowxF3zcMbfr3
         N2irosuQRiubg==
X-Virus-Scanned: amavisd-new at boeck1.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
X-RRZE-Submit-IP: 192.168.45.141
Received: from [192.168.45.141] (robolab141.informatik.uni-erlangen.de [192.168.45.141])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: U2FsdGVkX1+PJfC7snnKrnyNd/1b41XBPGlKLUGNUTs=)
        by smtp-auth.uni-erlangen.de (Postfix) with ESMTPSA id 4KDvdV1FQBz28Kt;
        Thu, 10 Mar 2022 17:28:46 +0100 (CET)
Content-Type: multipart/mixed; boundary="------------kM3b5Dka4YLkSdnR2ne2etQd"
Message-ID: <60607b92-f100-d114-4a42-565e20f29c58@fau.de>
Date:   Thu, 10 Mar 2022 17:28:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: de-DE
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Jeff Layton <jlayton@redhat.com>
From:   Paul Bergmann <paul.bergmann@fau.de>
Subject: [patch] fcntl.2: Add ESRCH to list of ERRORS
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------kM3b5Dka4YLkSdnR2ne2etQd
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello everyone,

when setting the notified PID for async operations using F_SETOWN
(F_SETOWN_EX respectively), the operation may fail if no process with
the specified PID is alive and visible to the caller. In this case, the
errno is set to ESRCH. This was introduced in the kernel by
f73127356f344483c82632accda2e72b7e0e5f25.

Here is an example program showing this behavior

setown_nonexisting.c:

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
static void die(const char *msg)
{
	perror(msg);
	exit(EXIT_FAILURE);
}

int main(void)
{
	int fd = open("/dev/null", O_RDONLY | O_ASYNC);
	if (fd < 0) {
		die("open");
	}
	/* Assuming there is no process with PID 999999 */
	if (fcntl(fd, F_SETOWN, 999999) < 0) {
		die("fcntl");
	}
	return EXIT_SUCCESS;
}

$ cc ./setown_nonexisting.c
$ ./a.out
fcntl: No such process

I hope my patch is according to the standards.

Best regards
Paul Bergmann
--------------kM3b5Dka4YLkSdnR2ne2etQd
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-patch-fcntl.2-Add-ESRCH-to-list-of-ERRORS.patch"
Content-Disposition: attachment;
 filename="0001-patch-fcntl.2-Add-ESRCH-to-list-of-ERRORS.patch"
Content-Transfer-Encoding: base64

RnJvbSAyMDVlMzFhZjA2NGNkODg2YjZlY2ZiODU5NzA1NDAwNzI3OGFmNGI0IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEJlcmdtYW5uIDxwYXVsLmJlcmdtYW5uQGZh
dS5kZT4KRGF0ZTogVGh1LCAxMCBNYXIgMjAyMiAxNjoyNzowMSArMDEwMApTdWJqZWN0OiBb
UEFUQ0hdIFtwYXRjaF0gZmNudGwuMjogQWRkIEVTUkNIIHRvIGxpc3Qgb2YgRVJST1JTCgpX
aGVuIHNldHRpbmcgdGhlIG5vdGlmaWVkIFBJRCBmb3IgYXN5bmMgb3BlcmF0aW9ucyB1c2lu
ZyBGX1NFVE9XTgooRl9TRVRPV05fRVggcmVzcGVjdGl2ZWx5KSwgdGhlIG9wZXJhdGlvbiBt
YXkgZmFpbCBpZiBubyBwcm9jZXNzIHdpdGgKdGhlIHNwZWNpZmllZCBQSUQgaXMgYWxpdmUg
YW5kIHZpc2libGUgdG8gdGhlIGNhbGxlci4gSW4gdGhpcyBjYXNlLCB0aGUKZXJybm8gaXMg
c2V0IHRvIEVTUkNILiBUaGlzIHdhcyBpbnRyb2R1Y2VkIGluIHRoZSBrZXJuZWwgYnkKZjcz
MTI3MzU2ZjM0NDQ4M2M4MjYzMmFjY2RhMmU3MmI3ZTBlNWYyNS4KCkhlcmUgaXMgYW4gZXhh
bXBsZSBwcm9ncmFtIHNob3dpbmcgdGhpcyBiZWhhdmlvcgoKc2V0b3duX25vbmV4aXN0aW5n
LmM6CgojaW5jbHVkZSA8ZmNudGwuaD4KI2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxz
dGRsaWIuaD4Kc3RhdGljIHZvaWQgZGllKGNvbnN0IGNoYXIgKm1zZykKewoJcGVycm9yKG1z
Zyk7CglleGl0KEVYSVRfRkFJTFVSRSk7Cn0KCmludCBtYWluKHZvaWQpCnsKCWludCBmZCA9
IG9wZW4oIi9kZXYvbnVsbCIsIE9fUkRPTkxZIHwgT19BU1lOQyk7CglpZiAoZmQgPCAwKSB7
CgkJZGllKCJvcGVuIik7Cgl9CgkvKiBBc3N1bWluZyB0aGVyZSBpcyBubyBwcm9jZXNzIHdp
dGggUElEIDk5OTk5OSAqLwoJaWYgKGZjbnRsKGZkLCBGX1NFVE9XTiwgOTk5OTk5KSA8IDAp
IHsKCQlkaWUoImZjbnRsIik7Cgl9CglyZXR1cm4gRVhJVF9TVUNDRVNTOwp9CgokIGNjIC4v
c2V0b3duX25vbmV4aXN0aW5nLmMKJCAuL2Eub3V0CmZjbnRsOiBObyBzdWNoIHByb2Nlc3MK
LS0tCiBtYW4yL2ZjbnRsLjIgfCAxMiArKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAx
MiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbWFuMi9mY250bC4yIGIvbWFuMi9mY250
bC4yCmluZGV4IDdiNTYwNGUzYS4uMTg2NTEzMjFmIDEwMDY0NAotLS0gYS9tYW4yL2ZjbnRs
LjIKKysrIGIvbWFuMi9mY250bC4yCkBAIC0xODI3LDYgKzE4MjcsMTggQEAgYnV0CiB3YXMg
bm90IG9wZW4gZm9yIHdyaXRpbmcKIG9yIHRoZSBjdXJyZW50IHNldCBvZiBzZWFscyBvbiB0
aGUgZmlsZSBhbHJlYWR5IGluY2x1ZGVzCiAuQlIgRl9TRUFMX1NFQUwgLgorLlRQCisuQiBF
U1JDSAorLkkgY21kCit3YXMKKy5CUiBGX1NFVE9XTgorKAorLkJSIEZfU0VUT1dOX0VYCisp
IGFuZAorLkkgYXJnCisoCisuSSBhcmctPnBpZAorKSBkb2VzIG5vdCByZWZlciB0byBhIHZp
c2libGUgcHJvY2Vzcy4KIC5TSCBDT05GT1JNSU5HIFRPCiBTVnI0LCA0LjNCU0QsIFBPU0lY
LjEtMjAwMS4KIE9ubHkgdGhlIG9wZXJhdGlvbnMKLS0gCjIuMzUuMQoK

--------------kM3b5Dka4YLkSdnR2ne2etQd--
