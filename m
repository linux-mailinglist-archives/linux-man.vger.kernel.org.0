Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C2636369CA
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 20:20:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237463AbiKWTT1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 14:19:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237382AbiKWTT0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 14:19:26 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78F1938B0
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:19:25 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 4906C16006E;
        Wed, 23 Nov 2022 11:19:25 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id OxXLFmMsJnUP; Wed, 23 Nov 2022 11:19:24 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 2CD70160070;
        Wed, 23 Nov 2022 11:19:24 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 2CD70160070
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669231164;
        bh=33QUHBSVr0WO/0oFxzSme+AeYuwM0LuGkNjqOkV7WOY=;
        h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:From;
        b=hRpHN4MWNoVlVrBTh6qyW/aZJd/kiWZZps/A1I80Wx+nViZpYZdEQ64qRDwo0SNOH
         mwmIjtia0E5OVi+7MR19zRtGQAPrFJ20tS1LpeqIPvXI03dPGkRPDCSRuPYGw7/DqX
         LrJusXV/LHZwnbLRyylyqOfR9IZ8XjZIYr6ZPI0w=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id B7A-yC20Zg9w; Wed, 23 Nov 2022 11:19:24 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id EBAA616006E;
        Wed, 23 Nov 2022 11:19:23 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------qh4rIutpI8CRWVK9afLysNVx"
Message-ID: <fe28e39d-64ed-75bc-e652-734a67b8259c@cs.ucla.edu>
Date:   Wed, 23 Nov 2022 11:19:23 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/4] zic.8: Add public domain notice
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>, tz@iana.org
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20221123134827.10420-1-alx@kernel.org>
 <ab852b8f-2c05-ba10-187d-c7f0e6545dcd@cs.ucla.edu>
 <423d19dd-211a-1acc-eb9b-a86153c19f94@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <423d19dd-211a-1acc-eb9b-a86153c19f94@gmail.com>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------qh4rIutpI8CRWVK9afLysNVx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-11-23 11:01, Alejandro Colomar wrote:
> Would you mind moving it to the top of the file, as is common with these 
> notices?

Sure, that's easy. Done by installing the attached.

--------------qh4rIutpI8CRWVK9afLysNVx
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-Put-public-domain-notices-at-man-page-starts.patch"
Content-Disposition: attachment;
 filename="0001-Put-public-domain-notices-at-man-page-starts.patch"
Content-Transfer-Encoding: base64

RnJvbSA3YWRmZmEwY2RlZDI5ZWE5Nzk1MmMzODM5OTM0YjI4MTE4MjliMDA3IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1
PgpEYXRlOiBXZWQsIDIzIE5vdiAyMDIyIDExOjE3OjU3IC0wODAwClN1YmplY3Q6IFtQUk9Q
T1NFRF0gUHV0IHB1YmxpYy1kb21haW4gbm90aWNlcyBhdCBtYW4gcGFnZSBzdGFydHMKClN1
Z2dlc3RlZCBieSBBbGVqYW5kcm8gQ29sb21hci4KLS0tCiBkYXRlLjEgICAgICAgfCA0ICsr
LS0KIG5ld2N0aW1lLjMgICB8IDQgKystLQogbmV3dHpzZXQuMyAgIHwgNCArKy0tCiB0aW1l
MnBvc2l4LjMgfCA0ICsrLS0KIHR6ZmlsZS41ICAgICB8IDQgKystLQogdHpzZWxlY3QuOCAg
IHwgNCArKy0tCiB6ZHVtcC44ICAgICAgfCA0ICsrLS0KIHppYy44ICAgICAgICB8IDQgKyst
LQogOCBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kYXRlLjEgYi9kYXRlLjEKaW5kZXggOTU3Yjk1ZDQuLjlhNzI1YTIw
IDEwMDY0NAotLS0gYS9kYXRlLjEKKysrIGIvZGF0ZS4xCkBAIC0xLDMgKzEsNSBAQAorLlwi
IFRoaXMgZmlsZSBpcyBpbiB0aGUgcHVibGljIGRvbWFpbiwgc28gY2xhcmlmaWVkIGFzIG9m
CisuXCIgMjAwOS0wNS0xNyBieSBBcnRodXIgRGF2aWQgT2xzb24uCiAuVEggZGF0ZSAxCiAu
U0ggTkFNRQogZGF0ZSBcLSBzaG93IGFuZCBzZXQgZGF0ZSBhbmQgdGltZQpAQCAtMTYzLDUg
KzE2NSwzIEBAIElmCiBpcyBhYnNlbnQsCiBVVEMgbGVhcCBzZWNvbmRzIGFyZSBsb2FkZWQg
ZnJvbQogLkJSIC91c3Ivc2hhcmUvem9uZWluZm8vcG9zaXhydWxlcyAuCi0uXCIgVGhpcyBm
aWxlIGlzIGluIHRoZSBwdWJsaWMgZG9tYWluLCBzbyBjbGFyaWZpZWQgYXMgb2YKLS5cIiAy
MDA5LTA1LTE3IGJ5IEFydGh1ciBEYXZpZCBPbHNvbi4KZGlmZiAtLWdpdCBhL25ld2N0aW1l
LjMgYi9uZXdjdGltZS4zCmluZGV4IDg2NjE1NDk4Li4yOTA3Zjg1NiAxMDA2NDQKLS0tIGEv
bmV3Y3RpbWUuMworKysgYi9uZXdjdGltZS4zCkBAIC0xLDMgKzEsNSBAQAorLlwiIFRoaXMg
ZmlsZSBpcyBpbiB0aGUgcHVibGljIGRvbWFpbiwgc28gY2xhcmlmaWVkIGFzIG9mCisuXCIg
MjAwOS0wNS0xNyBieSBBcnRodXIgRGF2aWQgT2xzb24uCiAuVEggTkVXQ1RJTUUgMwogLlNI
IE5BTUUKIGFzY3RpbWUsIGN0aW1lLCBkaWZmdGltZSwgZ210aW1lLCBsb2NhbHRpbWUsIG1r
dGltZSBcLSBjb252ZXJ0IGRhdGUgYW5kIHRpbWUKQEAgLTM0MCw1ICszNDIsMyBAQCByZXN0
cmljdGVkIHRvIHllYXJzIGluIHRoZSByYW5nZSAxOTAwIHRocm91Z2ggMjA5OS4KIFRvIGF2
b2lkIHRoaXMgcG9ydGFiaWxpdHkgbWVzcywgbmV3IHByb2dyYW1zIHNob3VsZCB1c2UKIC5C
IHN0cmZ0aW1lCiBpbnN0ZWFkLgotLlwiIFRoaXMgZmlsZSBpcyBpbiB0aGUgcHVibGljIGRv
bWFpbiwgc28gY2xhcmlmaWVkIGFzIG9mCi0uXCIgMjAwOS0wNS0xNyBieSBBcnRodXIgRGF2
aWQgT2xzb24uCmRpZmYgLS1naXQgYS9uZXd0enNldC4zIGIvbmV3dHpzZXQuMwppbmRleCBi
NjE1MDUxMy4uYzM3NDI4NTAgMTAwNjQ0Ci0tLSBhL25ld3R6c2V0LjMKKysrIGIvbmV3dHpz
ZXQuMwpAQCAtMSwzICsxLDUgQEAKKy5cIiBUaGlzIGZpbGUgaXMgaW4gdGhlIHB1YmxpYyBk
b21haW4sIHNvIGNsYXJpZmllZCBhcyBvZgorLlwiIDIwMDktMDUtMTcgYnkgQXJ0aHVyIERh
dmlkIE9sc29uLgogLlRIIE5FV1RaU0VUIDMKIC5TSCBOQU1FCiB0enNldCBcLSBpbml0aWFs
aXplIHRpbWUgY29udmVyc2lvbiBpbmZvcm1hdGlvbgpAQCAtMzQ2LDUgKzM0OCwzIEBAIG5l
d2N0aW1lKDMpLAogbmV3c3RyZnRpbWUoMyksCiB0aW1lKDIpLAogdHpmaWxlKDUpCi0uXCIg
VGhpcyBmaWxlIGlzIGluIHRoZSBwdWJsaWMgZG9tYWluLCBzbyBjbGFyaWZpZWQgYXMgb2YK
LS5cIiAyMDA5LTA1LTE3IGJ5IEFydGh1ciBEYXZpZCBPbHNvbi4KZGlmZiAtLWdpdCBhL3Rp
bWUycG9zaXguMyBiL3RpbWUycG9zaXguMwppbmRleCBjNzk0MDMyYy4uZTdjNjkyMDYgMTAw
NjQ0Ci0tLSBhL3RpbWUycG9zaXguMworKysgYi90aW1lMnBvc2l4LjMKQEAgLTEsMyArMSw1
IEBACisuXCIgVGhpcyBmaWxlIGlzIGluIHRoZSBwdWJsaWMgZG9tYWluLCBzbyBjbGFyaWZp
ZWQgYXMgb2YKKy5cIiAxOTk2LTA2LTA1IGJ5IEFydGh1ciBEYXZpZCBPbHNvbi4KIC5USCB0
aW1lMnBvc2l4IDMKIC5TSCBOQU1FCiB0aW1lMnBvc2l4LCBwb3NpeDJ0aW1lIFwtIGNvbnZl
cnQgc2Vjb25kcyBzaW5jZSB0aGUgRXBvY2gKQEAgLTEyOSw1ICsxMzEsMyBAQCBkaWZmdGlt
ZSgzKSwKIGxvY2FsdGltZSgzKSwKIG1rdGltZSgzKSwKIHRpbWUoMikKLS5cIiBUaGlzIGZp
bGUgaXMgaW4gdGhlIHB1YmxpYyBkb21haW4sIHNvIGNsYXJpZmllZCBhcyBvZgotLlwiIDE5
OTYtMDYtMDUgYnkgQXJ0aHVyIERhdmlkIE9sc29uLgpkaWZmIC0tZ2l0IGEvdHpmaWxlLjUg
Yi90emZpbGUuNQppbmRleCAyODBlOGQ4YS4uOWQzMTIyNTUgMTAwNjQ0Ci0tLSBhL3R6Zmls
ZS41CisrKyBiL3R6ZmlsZS41CkBAIC0xLDMgKzEsNSBAQAorLlwiIFRoaXMgZmlsZSBpcyBp
biB0aGUgcHVibGljIGRvbWFpbiwgc28gY2xhcmlmaWVkIGFzIG9mCisuXCIgMTk5Ni0wNi0w
NSBieSBBcnRodXIgRGF2aWQgT2xzb24uCiAuVEggVFpGSUxFIDUKIC5TSCBOQU1FCiB0emZp
bGUgXC0gdGltZXpvbmUgaW5mb3JtYXRpb24KQEAgLTQ5Miw1ICs0OTQsMyBAQCBJbnRlcm5l
dCBSRkMgODUzNgogLlVSIGh0dHBzOi8vXDpkb2kub3JnL1w6MTAuMTc0ODcvXDpSRkM4NTM2
CiBkb2k6MTAuMTc0ODcvUkZDODUzNgogLlVFIC4KLS5cIiBUaGlzIGZpbGUgaXMgaW4gdGhl
IHB1YmxpYyBkb21haW4sIHNvIGNsYXJpZmllZCBhcyBvZgotLlwiIDE5OTYtMDYtMDUgYnkg
QXJ0aHVyIERhdmlkIE9sc29uLgpkaWZmIC0tZ2l0IGEvdHpzZWxlY3QuOCBiL3R6c2VsZWN0
LjgKaW5kZXggMWE1Y2UxMTAuLjUzYTM0Y2Y2IDEwMDY0NAotLS0gYS90enNlbGVjdC44Cisr
KyBiL3R6c2VsZWN0LjgKQEAgLTEsMyArMSw1IEBACisuXCIgVGhpcyBmaWxlIGlzIGluIHRo
ZSBwdWJsaWMgZG9tYWluLCBzbyBjbGFyaWZpZWQgYXMgb2YKKy5cIiAyMDA5LTA1LTE3IGJ5
IEFydGh1ciBEYXZpZCBPbHNvbi4KIC5USCBUWlNFTEVDVCA4CiAuU0ggTkFNRQogdHpzZWxl
Y3QgXC0gc2VsZWN0IGEgdGltZXpvbmUKQEAgLTEyMSw1ICsxMjMsMyBAQCBuZXdjdGltZSgz
KSwgdHpmaWxlKDUpLCB6ZHVtcCg4KSwgemljKDgpCiBBcHBsaWNhdGlvbnMgc2hvdWxkIG5v
dCBhc3N1bWUgdGhhdAogLkJSIHR6c2VsZWN0ICdzCiBvdXRwdXQgbWF0Y2hlcyB0aGUgdXNl
cidzIHBvbGl0aWNhbCBwcmVmZXJlbmNlcy4KLS5cIiBUaGlzIGZpbGUgaXMgaW4gdGhlIHB1
YmxpYyBkb21haW4sIHNvIGNsYXJpZmllZCBhcyBvZgotLlwiIDIwMDktMDUtMTcgYnkgQXJ0
aHVyIERhdmlkIE9sc29uLgpkaWZmIC0tZ2l0IGEvemR1bXAuOCBiL3pkdW1wLjgKaW5kZXgg
ZWU3ZjkwNzMuLjFmZjkyNjM5IDEwMDY0NAotLS0gYS96ZHVtcC44CisrKyBiL3pkdW1wLjgK
QEAgLTEsMyArMSw1IEBACisuXCIgVGhpcyBmaWxlIGlzIGluIHRoZSBwdWJsaWMgZG9tYWlu
LCBzbyBjbGFyaWZpZWQgYXMgb2YKKy5cIiAyMDA5LTA1LTE3IGJ5IEFydGh1ciBEYXZpZCBP
bHNvbi4KIC5USCB6ZHVtcCA4CiAuU0ggTkFNRQogemR1bXAgXC0gdGltZXpvbmUgZHVtcGVy
CkBAIC0yMjcsNSArMjI5LDMgQEAgaW50cm9kdWN0aW9uIG9mIFVUQyBpcyBwcm9ibGVtYXRp
Yy4KIC5TSCBTRUUgQUxTTwogLkJSIHR6ZmlsZSAoNSksCiAuQlIgemljICg4KQotLlwiIFRo
aXMgZmlsZSBpcyBpbiB0aGUgcHVibGljIGRvbWFpbiwgc28gY2xhcmlmaWVkIGFzIG9mCi0u
XCIgMjAwOS0wNS0xNyBieSBBcnRodXIgRGF2aWQgT2xzb24uCmRpZmYgLS1naXQgYS96aWMu
OCBiL3ppYy44CmluZGV4IDViNzg1NzYyLi44Yjc3ZWExMiAxMDA2NDQKLS0tIGEvemljLjgK
KysrIGIvemljLjgKQEAgLTEsMyArMSw1IEBACisuXCIgVGhpcyBmaWxlIGlzIGluIHRoZSBw
dWJsaWMgZG9tYWluLCBzbyBjbGFyaWZpZWQgYXMgb2YKKy5cIiAyMDA5LTA1LTE3IGJ5IEFy
dGh1ciBEYXZpZCBPbHNvbi4KIC5USCB6aWMgOAogLlNIIE5BTUUKIHppYyBcLSB0aW1lem9u
ZSBjb21waWxlcgpAQCAtODk0LDUgKzg5NiwzIEBAIHNwZWNpZnlpbmcgdHJhbnNpdGlvbiBp
bnN0YW50cyB1c2luZyB1bml2ZXJzYWwgdGltZS4KIC5TSCBTRUUgQUxTTwogLkJSIHR6Zmls
ZSAoNSksCiAuQlIgemR1bXAgKDgpCi0uXCIgVGhpcyBmaWxlIGlzIGluIHRoZSBwdWJsaWMg
ZG9tYWluLCBzbyBjbGFyaWZpZWQgYXMgb2YKLS5cIiAyMDA5LTA1LTE3IGJ5IEFydGh1ciBE
YXZpZCBPbHNvbi4KLS0gCjIuMzcuMgoK

--------------qh4rIutpI8CRWVK9afLysNVx--
