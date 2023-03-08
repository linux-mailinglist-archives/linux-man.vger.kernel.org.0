Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9DB96B158B
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 23:49:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229668AbjCHWtS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 17:49:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229845AbjCHWtC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 17:49:02 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 629DD2CC72
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 14:48:44 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id A7A12160037;
        Wed,  8 Mar 2023 14:48:44 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id IBjjCEuQd9lh; Wed,  8 Mar 2023 14:48:43 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 33808160044;
        Wed,  8 Mar 2023 14:48:43 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 33808160044
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1678315723;
        bh=pJSbq2al+gKSfSUO+QtOa7XjGeZt7o0eEjcg7TPtJ9U=;
        h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:From;
        b=EGFYxFfbAowf7q6qcPVFC6y1jEBQtosVLKUTgZzSiVYfFmqVFNKDlM6dJY6SfMx1q
         TmQuDDt/spn4cu+U8qd0+n1eLRAlMo1GoKcokgF7RcdW9mC00hCPXa/ajjEBNndNkk
         XZuJR47DNUQeFz0D+ph/O/Nf1+SUQ89333ZPxXxw=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id vTxkkr3BCc4V; Wed,  8 Mar 2023 14:48:43 -0800 (PST)
Received: from [131.179.64.200] (Penguin.CS.UCLA.EDU [131.179.64.200])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 08A52160037;
        Wed,  8 Mar 2023 14:48:43 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------xgLwNbrGJkjVIucFMPRdb2N3"
Message-ID: <659095db-c2dd-6d49-6f76-8ea06f4d8579@cs.ucla.edu>
Date:   Wed, 8 Mar 2023 14:48:42 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: mandoc(1) warning in tzfile(5) regarding //
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        Time Zone Mailing List <tz@iana.org>
References: <884cb5d0-27ce-a5ca-b449-972021e62e92@gmail.com>
 <7c3294cf-e3d0-c716-d1c0-5b6c5c757d7e@cs.ucla.edu>
 <7eb92df5-6c87-8384-c4a8-2a00eabf1c8e@gmail.com>
 <66ef5b92-6e19-8bea-2840-6c2f0240d225@cs.ucla.edu>
 <08a72d2c-e7cb-4390-2cb1-7601b344ce9e@gmail.com>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <08a72d2c-e7cb-4390-2cb1-7601b344ce9e@gmail.com>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------xgLwNbrGJkjVIucFMPRdb2N3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/8/23 14:15, Alejandro Colomar wrote:

> That patch looks good to me.  If you use these:
> 
> Reviewed-by: Alejandro Colomar <alx@kernel.org>

Oh, we don't use those in tzdb; instead your name is mentioned in the 
commit message. I installed it that way.


> I suggest using the project name without a
> version.  How about the following?
> 
> .TH tzfile 5 "" tzdb
> 
> (or alternatively:)
> 
> .TH tzfile 5 "" "Time Zone Database"

Yes, that should work. I installed the attached proposed patch into the 
tzdb development repository. Feel free to migrate this into man-pages at 
your convenience. No rush of course.


>> I've been reluctant to do that upstream since I expect each
>> downstream user has its own format for comments regarding licensing,
>> SBOM, SSDF, SCA, and so forth (and if you don't know what those acronyms
>> mean then I envy you :-).
> 
> I don't :-)

https://www.nist.gov/itl/executive-order-14028-improving-nations-cybersecurity/software-security-supply-chains-open

--------------xgLwNbrGJkjVIucFMPRdb2N3
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-Append-tzdb-arg-4-to-.TH-lines.patch"
Content-Disposition: attachment;
 filename="0001-Append-tzdb-arg-4-to-.TH-lines.patch"
Content-Transfer-Encoding: base64

RnJvbSAyNzE0ODUzOWU2OTlkOWFiZTUwZGY4NDM3MWEwNzdmZGYyYmMxM2RlIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1
PgpEYXRlOiBXZWQsIDggTWFyIDIwMjMgMTQ6NDA6NTggLTA4MDAKU3ViamVjdDogW1BST1BP
U0VEXSBBcHBlbmQgdHpkYiBhcmcgNCB0byAuVEggbGluZXMKClN1Z2dlc3RlZCBieSBBbGVq
YW5kcm8gQ29sb21hciBpbjoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWFuLzA4
YTcyZDJjLWU3Y2ItNDM5MC0yY2IxLTc2MDFiMzQ0Y2U5ZUBnbWFpbC5jb20vVC8jdAotLS0K
IGRhdGUuMSAgICAgICAgfCAyICstCiBuZXdjdGltZS4zICAgIHwgMiArLQogbmV3c3RyZnRp
bWUuMyB8IDIgKy0KIG5ld3R6c2V0LjMgICAgfCAyICstCiB0aW1lMnBvc2l4LjMgIHwgMiAr
LQogdHpmaWxlLjUgICAgICB8IDIgKy0KIHR6c2VsZWN0LjggICAgfCAyICstCiB6ZHVtcC44
ICAgICAgIHwgMiArLQogemljLjggICAgICAgICB8IDIgKy0KIDkgZmlsZXMgY2hhbmdlZCwg
OSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RhdGUuMSBi
L2RhdGUuMQppbmRleCA4NjcwZmYxLi5lODEwNzIxIDEwMDY0NAotLS0gYS9kYXRlLjEKKysr
IGIvZGF0ZS4xCkBAIC0xLDYgKzEsNiBAQAogLlwiIFRoaXMgZmlsZSBpcyBpbiB0aGUgcHVi
bGljIGRvbWFpbiwgc28gY2xhcmlmaWVkIGFzIG9mCiAuXCIgMjAwOS0wNS0xNyBieSBBcnRo
dXIgRGF2aWQgT2xzb24uCi0uVEggZGF0ZSAxCisuVEggZGF0ZSAxICIiICJUaW1lIFpvbmUg
RGF0YWJhc2UiCiAuU0ggTkFNRQogZGF0ZSBcLSBzaG93IGFuZCBzZXQgZGF0ZSBhbmQgdGlt
ZQogLlNIIFNZTk9QU0lTCmRpZmYgLS1naXQgYS9uZXdjdGltZS4zIGIvbmV3Y3RpbWUuMwpp
bmRleCA3MGQ4ZTU0Li4wNWJiN2RlIDEwMDY0NAotLS0gYS9uZXdjdGltZS4zCisrKyBiL25l
d2N0aW1lLjMKQEAgLTEsNiArMSw2IEBACiAuXCIgVGhpcyBmaWxlIGlzIGluIHRoZSBwdWJs
aWMgZG9tYWluLCBzbyBjbGFyaWZpZWQgYXMgb2YKIC5cIiAyMDA5LTA1LTE3IGJ5IEFydGh1
ciBEYXZpZCBPbHNvbi4KLS5USCBuZXdjdGltZSAzCisuVEggbmV3Y3RpbWUgMyAiIiAiVGlt
ZSBab25lIERhdGFiYXNlIgogLlNIIE5BTUUKIGFzY3RpbWUsIGN0aW1lLCBkaWZmdGltZSwg
Z210aW1lLCBsb2NhbHRpbWUsIG1rdGltZSBcLSBjb252ZXJ0IGRhdGUgYW5kIHRpbWUKIC5T
SCBTWU5PUFNJUwpkaWZmIC0tZ2l0IGEvbmV3c3RyZnRpbWUuMyBiL25ld3N0cmZ0aW1lLjMK
aW5kZXggNzVkODhjOC4uNDMyYzNlOCAxMDA2NDQKLS0tIGEvbmV3c3RyZnRpbWUuMworKysg
Yi9uZXdzdHJmdGltZS4zCkBAIC0zNSw3ICszNSw3IEBACiAuXCIgICAgIGZyb206IEAoIylz
dHJmdGltZS4zCTUuMTIgKEJlcmtlbGV5KSA2LzI5LzkxCiAuXCIJJElkOiBzdHJmdGltZS4z
LHYgMS40IDE5OTMvMTIvMTUgMjA6MzM6MDAganRjIEV4cCAkCiAuXCIKLS5USCBuZXdzdHJm
dGltZSAzCisuVEggbmV3c3RyZnRpbWUgMyAiIiAiVGltZSBab25lIERhdGFiYXNlIgogLlNI
IE5BTUUKIHN0cmZ0aW1lIFwtIGZvcm1hdCBkYXRlIGFuZCB0aW1lCiAuU0ggU1lOT1BTSVMK
ZGlmZiAtLWdpdCBhL25ld3R6c2V0LjMgYi9uZXd0enNldC4zCmluZGV4IGUxNmFlNmIuLjc4
YjZiNmMgMTAwNjQ0Ci0tLSBhL25ld3R6c2V0LjMKKysrIGIvbmV3dHpzZXQuMwpAQCAtMSw2
ICsxLDYgQEAKIC5cIiBUaGlzIGZpbGUgaXMgaW4gdGhlIHB1YmxpYyBkb21haW4sIHNvIGNs
YXJpZmllZCBhcyBvZgogLlwiIDIwMDktMDUtMTcgYnkgQXJ0aHVyIERhdmlkIE9sc29uLgot
LlRIIG5ld3R6c2V0IDMKKy5USCBuZXd0enNldCAzICIiICJUaW1lIFpvbmUgRGF0YWJhc2Ui
CiAuU0ggTkFNRQogdHpzZXQgXC0gaW5pdGlhbGl6ZSB0aW1lIGNvbnZlcnNpb24gaW5mb3Jt
YXRpb24KIC5TSCBTWU5PUFNJUwpkaWZmIC0tZ2l0IGEvdGltZTJwb3NpeC4zIGIvdGltZTJw
b3NpeC4zCmluZGV4IGUxM2M0MzEuLmY0ODQwMmIgMTAwNjQ0Ci0tLSBhL3RpbWUycG9zaXgu
MworKysgYi90aW1lMnBvc2l4LjMKQEAgLTEsNiArMSw2IEBACiAuXCIgVGhpcyBmaWxlIGlz
IGluIHRoZSBwdWJsaWMgZG9tYWluLCBzbyBjbGFyaWZpZWQgYXMgb2YKIC5cIiAxOTk2LTA2
LTA1IGJ5IEFydGh1ciBEYXZpZCBPbHNvbi4KLS5USCB0aW1lMnBvc2l4IDMKKy5USCB0aW1l
MnBvc2l4IDMgIiIgIlRpbWUgWm9uZSBEYXRhYmFzZSIKIC5TSCBOQU1FCiB0aW1lMnBvc2l4
LCBwb3NpeDJ0aW1lIFwtIGNvbnZlcnQgc2Vjb25kcyBzaW5jZSB0aGUgRXBvY2gKIC5TSCBT
WU5PUFNJUwpkaWZmIC0tZ2l0IGEvdHpmaWxlLjUgYi90emZpbGUuNQppbmRleCBlYjVkNGU4
Li41OWQ5ZjZiIDEwMDY0NAotLS0gYS90emZpbGUuNQorKysgYi90emZpbGUuNQpAQCAtMSw2
ICsxLDYgQEAKIC5cIiBUaGlzIGZpbGUgaXMgaW4gdGhlIHB1YmxpYyBkb21haW4sIHNvIGNs
YXJpZmllZCBhcyBvZgogLlwiIDE5OTYtMDYtMDUgYnkgQXJ0aHVyIERhdmlkIE9sc29uLgot
LlRIIHR6ZmlsZSA1CisuVEggdHpmaWxlIDUgIiIgIlRpbWUgWm9uZSBEYXRhYmFzZSIKIC5T
SCBOQU1FCiB0emZpbGUgXC0gdGltZXpvbmUgaW5mb3JtYXRpb24KIC5TSCBERVNDUklQVElP
TgpkaWZmIC0tZ2l0IGEvdHpzZWxlY3QuOCBiL3R6c2VsZWN0LjgKaW5kZXggOTgyODg0OC4u
NDU3ODA5MCAxMDA2NDQKLS0tIGEvdHpzZWxlY3QuOAorKysgYi90enNlbGVjdC44CkBAIC0x
LDYgKzEsNiBAQAogLlwiIFRoaXMgZmlsZSBpcyBpbiB0aGUgcHVibGljIGRvbWFpbiwgc28g
Y2xhcmlmaWVkIGFzIG9mCiAuXCIgMjAwOS0wNS0xNyBieSBBcnRodXIgRGF2aWQgT2xzb24u
Ci0uVEggdHpzZWxlY3QgOAorLlRIIHR6c2VsZWN0IDggIiIgIlRpbWUgWm9uZSBEYXRhYmFz
ZSIKIC5TSCBOQU1FCiB0enNlbGVjdCBcLSBzZWxlY3QgYSB0aW1lem9uZQogLlNIIFNZTk9Q
U0lTCmRpZmYgLS1naXQgYS96ZHVtcC44IGIvemR1bXAuOAppbmRleCAxNzBlMThkLi5mNzdj
MGM3IDEwMDY0NAotLS0gYS96ZHVtcC44CisrKyBiL3pkdW1wLjgKQEAgLTEsNiArMSw2IEBA
CiAuXCIgVGhpcyBmaWxlIGlzIGluIHRoZSBwdWJsaWMgZG9tYWluLCBzbyBjbGFyaWZpZWQg
YXMgb2YKIC5cIiAyMDA5LTA1LTE3IGJ5IEFydGh1ciBEYXZpZCBPbHNvbi4KLS5USCB6ZHVt
cCA4CisuVEggemR1bXAgOCAiIiAiVGltZSBab25lIERhdGFiYXNlIgogLlNIIE5BTUUKIHpk
dW1wIFwtIHRpbWV6b25lIGR1bXBlcgogLlNIIFNZTk9QU0lTCmRpZmYgLS1naXQgYS96aWMu
OCBiL3ppYy44CmluZGV4IGU5ZmNjZmUuLmM0NjdlZmUgMTAwNjQ0Ci0tLSBhL3ppYy44Cisr
KyBiL3ppYy44CkBAIC0xLDYgKzEsNiBAQAogLlwiIFRoaXMgZmlsZSBpcyBpbiB0aGUgcHVi
bGljIGRvbWFpbiwgc28gY2xhcmlmaWVkIGFzIG9mCiAuXCIgMjAwOS0wNS0xNyBieSBBcnRo
dXIgRGF2aWQgT2xzb24uCi0uVEggemljIDgKKy5USCB6aWMgOCAiIiAiVGltZSBab25lIERh
dGFiYXNlIgogLlNIIE5BTUUKIHppYyBcLSB0aW1lem9uZSBjb21waWxlcgogLlNIIFNZTk9Q
U0lTCi0tIAoyLjM5LjIKCg==

--------------xgLwNbrGJkjVIucFMPRdb2N3--
